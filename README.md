# Foodbank

This project showcases a proof-of-concept inventory management application built using [Flutter][flutter], aimed at optimizing the operations of the food bank. It features barcode scanning, allowing to quickly identify products and ammend their inventory.

## Goals

Some main criteria 

* To provide an accessible platform for volunteers through a progressive web app. This allows anonymous access, thereby eliminating the need to download any software onto personal devices.
* To facilitate authenticated admin access for the food bank staff via the Android, iOS, or web version of the application.
* To evaluate the current data storage solution for potential integration or a possible transition to a cloud-based solution designed specifically for non-profit organizations.

## Setup

This project, created with [Nx](nx), serves as a multi-language monorepo. The current setup only includes the Flutter mobile and web applications located in the `packages/app` folder
So far the project only contains the Flutter mobile and web application in the `packages/app` folder and will be expanded to include the backend as the project progresses.

Visit the [Nx Documentation](nx) to learn more.

### Quick start

1. Ensure Flutter is installed as outlined on the [Flutter setup][flutter install] page.
1. Run `npm i` in the root directory to install dependencies.
1. Run `npm start:app` to start the Flutter application.
1. Alternative navigate to the `packages/app` folder directly and use `flutter run` (or any other `flutter` CLI commands).

[flutter]: https://flutter.dev
[flutter install]: https://docs.flutter.dev/get-started/install
[nx]: https://nx.dev