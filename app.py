from flask import Flask, render_template, request, jsonify
import math

app = Flask(__name__)

class Calculator:
    def __init__(self):
        self.history = []
    
    def add(self, a, b):
        result = a + b
        self.history.append(f"{a} + {b} = {result}")
        return result
    
    def subtract(self, a, b):
        result = a - b
        self.history.append(f"{a} - {b} = {result}")
        return result
    
    def multiply(self, a, b):
        result = a * b
        self.history.append(f"{a} × {b} = {result}")
        return result
    
    def divide(self, a, b):
        if b == 0:
            raise ValueError("Cannot divide by zero")
        result = a / b
        self.history.append(f"{a} ÷ {b} = {result}")
        return result
    
    def power(self, a, b):
        result = a ** b
        self.history.append(f"{a} ^ {b} = {result}")
        return result
    
    def square_root(self, a):
        if a < 0:
            raise ValueError("Cannot calculate square root of negative number")
        result = math.sqrt(a)
        self.history.append(f"√{a} = {result}")
        return result
    
    def evaluate_expression(self, expression):
        try:
            # Basic security: only allow certain characters
            allowed_chars = set('0123456789+-*/().^ ')
            if not all(c in allowed_chars for c in expression.replace('**', '^')):
                raise ValueError("Invalid characters in expression")
            
            # Replace ^ with ** for Python evaluation
            expression = expression.replace('^', '**')
            result = eval(expression)
            self.history.append(f"{expression} = {result}")
            return result
        except Exception as e:
            raise ValueError(f"Invalid expression: {str(e)}")

# Global calculator instance
calc = Calculator()

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/calculate', methods=['POST'])
def calculate():
    try:
        data = request.json
        operation = data.get('operation')
        
        if operation == 'evaluate':
            expression = data.get('expression', '')
            result = calc.evaluate_expression(expression)
        else:
            a = float(data.get('a', 0))
            b = float(data.get('b', 0)) if data.get('b') is not None else None
            
            if operation == 'add':
                result = calc.add(a, b)
            elif operation == 'subtract':
                result = calc.subtract(a, b)
            elif operation == 'multiply':
                result = calc.multiply(a, b)
            elif operation == 'divide':
                result = calc.divide(a, b)
            elif operation == 'power':
                result = calc.power(a, b)
            elif operation == 'sqrt':
                result = calc.square_root(a)
            else:
                return jsonify({'error': 'Invalid operation'}), 400
        
        return jsonify({'result': result})
    
    except ValueError as e:
        return jsonify({'error': str(e)}), 400
    except Exception as e:
        return jsonify({'error': 'Calculation error'}), 500

@app.route('/history')
def get_history():
    return jsonify({'history': calc.history})

@app.route('/clear-history', methods=['POST'])
def clear_history():
    calc.history.clear()
    return jsonify({'message': 'History cleared'})

if __name__ == '__main__':
    app.run(debug=True, host='127.0.0.1', port=5000)
