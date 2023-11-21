const express = require("express");

const mysql = require("mysql2");

const con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "admin123",
    database: "inventory_db"
});



const app = express();

app.use(express.json());

app.get("/", (req, res) =>{
    res.json({message: "Server is live."});
});

app.post("/products", (req, res)=>{

    const {name, description, price} = req.body;

    const query = "INSERT INTO products(name, description, price) VALUES(?, ?, ?)";

    con.query(query, [name, description, price], (err, result)=>{

        console.log(result);


        if(!err){
            return res.status(201).json({message: "Successfully created."});
        }

        return res.status(500).json({message: "Server errror."});
    });

    

});

app.get("/products", (req, res) =>{

    const query = "SELECT * FROM products";

    con.query(query, (err, result) =>{
        if(!err){
            return res.status(200).json(result);
        }
        return res.status(500).json({message: "Server errror."});
    });
});

app.get("/products/:id", (req, res) =>{

    const id = req.params.id;

    const query = "SELECT * FROM products WHERE product_id = ?";

  

    con.query(query, [id], (err, result) =>{
        if(!err){
            return res.status(200).json(result);
        }

       

        return res.status(500).json({message: "Server errror."});
    });
});

app.put("/products/:id", (req, res)=>{
    const {name, description, price} = req.body;
    const id = req.params.id;

    const query = "UPDATE products SET name = ?, description = ?, price = ? WHERE product_id = ? ";

    con.query(query, [name, description, price, id], (err, result)=>{

        console.log(result);


        if(!err){
            return res.status(204).json({message: "Successfully updated."});
        }

        return res.status(500).json({message: "Server errror."});
    });

});

app.delete("/products/:id", (req, res) =>{
    const id = req.params.id;

    const query = "DELETE FROM products WHERE product_id = ?";

    con.query(query, [id], (err, result)=>{
        
        console.log(result);

        if(!err){
            if(result.affectedRows > 0){
                return res.status(200).json({message: "Successfully deleted."});
            }
            return res.status(404).json({message: "Product not found"});
           
        }

        
        

        return res.status(500).json({message: "Server errror."});
    });
});

app.listen(3000, () =>{
    console.log("Listening on port 3000");
});
