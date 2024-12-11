# Plantanist Backend

This project serves as the backend for the Plantanist app. It is designed to handle various functionalities including:

- Image-based disease prediction: Users can scan a plant's leaf and receive a prediction of the disease it has.
- Database management: Include features for storing and managing user data, plant information, and prediction results.
- User authentication: The backend will support user registration, login, and authentication to ensure secure access to the app's features.
    
## Installation

1. Clone the repository:
    ```sh
    git clone https://github.com/nawocci/plantanist-backend.git
    cd plantanist-backend
    ```

2. Install the required packages:
    ```sh
    pip install -r requirements.txt
    ```

## Usage

Start the Flask server:
    ```
    python app.py
    ```

## API Endpoints

### POST /predict

- **Description**: Predicts the disease from an uploaded image.
- **Request**: Multipart form-data with an image file.
- **Response**: JSON object with the plant, disease, description, confidence score, and date.

    ```json
    {
        "plant": "Tomato",
        "disease": "Bacterial spot",
        "description": "Bacterial spot is a common disease in tomatoes. It is caused by the bacterium Xanthomonas campestris. Symptoms include small, dark spots on the leaves, which may have a yellow halo. The spots may grow in size and merge together, causing the leaves to turn yellow and fall off. The disease is spread through water, so it is important to avoid overhead watering. Copper-based fungicides can be used to control the disease.",
        "confidence_score": 98.76,
        "date": "2024-03-20 15:30:45"
    }
    ```

## License

This project is licensed under the MIT License.