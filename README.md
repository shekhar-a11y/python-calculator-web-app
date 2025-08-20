# Python Calculator Web App

A modern, responsive web-based calculator built with Python Flask and vanilla JavaScript.

## Features

### Phase 1 (Current)
- ✅ Basic arithmetic operations (+, -, ×, ÷)
- ✅ Advanced operations (power, square root)
- ✅ Expression evaluation with parentheses
- ✅ Calculation history
- ✅ Modern, responsive UI
- ✅ Keyboard support
- ✅ Error handling

## Installation

1. Install Python dependencies:
```bash
pip install -r requirements.txt
```

2. Run the application:
```bash
python app.py
```

3. Open your browser and go to: http://127.0.0.1:5000

## Usage

### Web Interface
- Click buttons or use keyboard to input calculations
- Press Enter or = to calculate
- Press Escape or C to clear
- View calculation history in the bottom panel

### Keyboard Shortcuts
- Numbers (0-9): Input numbers
- +, -, *, /: Basic operations
- Enter or =: Calculate result
- Escape or C: Clear display
- Backspace: Delete last character
- Parentheses: ( and )

## Future Development Phases

### Phase 2 (Planned)
- Scientific functions (sin, cos, tan, log)
- Memory functions (M+, M-, MR, MC)
- Unit conversions
- Graphing capabilities

### Phase 3 (Planned)
- Equation solver
- Matrix calculations
- Statistical functions
- Export/import calculations

### Phase 4 (Planned)
- Multi-user support
- Saved calculation sessions
- API endpoints for integration
- Mobile app version

## Project Structure
```
pythonp/
├── app.py              # Flask application
├── templates/
│   └── index.html      # Web interface
├── requirements.txt    # Python dependencies
└── README.md          # This file
```

## API Endpoints

- `GET /` - Main calculator interface
- `POST /calculate` - Perform calculations
- `GET /history` - Get calculation history
- `POST /clear-history` - Clear calculation history
