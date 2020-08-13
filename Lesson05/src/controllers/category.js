const pool = require('../utils/db')

const getAllCategory = (req, res) => {
    pool.query("select * from `category`", (err, data) => {
        if(err) {
            console.log(err);
            res.send("Error Query")
        }
        console.log(data);
        res.send(data)
    })   
}

const getCategoryById = (req, res) => {
    pool.query("select * from `category` where `categoryId` = ?", req.params.id, (err, data) =>{
        if(err) {
            console.log(err);
            res.send("Error Query")
        }
        console.log(data);
        res.send(data)
    })
}

const createCategory = (req, res) => {
    pool.query("insert into `category` set ?", req.body, (err,data) => {
        if(err){
            console.log(err);
            res.send("Error Query")
        }
        console.log("Successfully added");
        res.send(data)
    })
}

const updateCategoryById = (req, res) => {
    pool.query("update `category` set ? where `categoryId` = ?", [res.body, req.params.id], (err, data) =>{
        if(err) {
            console.log(err);
            res.send("Error Query")
        }
        console.log("Successfully updated");
        res.send(data)
    })
}

const deleteCategoryById = (req, res) => {
    pool.query("delete from `category` where `categoryId` = ?", req.params.id, (err, data) =>{
        if(err) {
            console.log(err);
            res.send("Error Query")
        }
        console.log("Successfully deleted");
        res.send(data)
    })
}

module.exports = {
    getAllCategory,
    getCategoryById,
    createCategory,
    updateCategoryById,
    deleteCategoryById
}