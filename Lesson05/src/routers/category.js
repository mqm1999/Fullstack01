//cach 1
// const express = require('express')
// const Route = express.Router();

//cach 2
const categoryController = require('../controllers/category')
const { deleteCategoryById } = require('../controllers/category')
const Route = require('express').Router();

Route.get('/', categoryController.getAllCategory);
Route.get('/:id', categoryController.getCategoryById);
Route.post('/', categoryController.createCategory);
Route.put('/:id', categoryController.updateCategoryById);
Route.put('/:id', deleteCategoryById);

module.exports = Route;

