# foodbank

This project shall function as a demo for the Singaporean food bank to get an idea of the possibilities of leveraging barcode scanning.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


# Background

The food bank regularly gets donations of food items from smaller and bigger stores. The foodbank's staff and volunteers sort through these donations to ensure that donations can be handed to destitute people. The products will be classified into specific categories.
A category may look like "Pasta (Halal) (500g-999g)". The volunteers do this categorization by hand, sum up the total of products per category and donation, and then add it to the inventory.
This project will simplify the process immensely by providing a progressive web app that uses barcode scanning. The idea is that volunteers and employees can scan the barcode of any product they come across to help them classify it.
Features:
* Fetching product information from the database or creating such
  * Categorization (Pasta, Rice, Snack, etc.)
  * Halal vs. non-halal
  * Classification into the weight categories
  * Shelf in the warehouse to store the product
  * Where the expiry date is found on the packaging
* Keeping track of items scanned per donation
* Submitting and aggregating the inventory on admin (i.e. foodbank employee app) per donation
* Connecting existing inventory system/database
* Amending inventory for corrections in the admin app