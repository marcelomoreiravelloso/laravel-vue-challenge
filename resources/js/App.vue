<template>
  <div id="app">
    <header class="header">
      <h1>🚀 Laravel Vue Challenge</h1>
      <p>Full-stack application with Laravel API and Vue.js frontend</p>
    </header>

    <main class="main">
      <section class="welcome">
        <h2>Welcome to the Challenge!</h2>
        <p>This is a modern full-stack application showcasing:</p>
        <ul>
          <li>✅ Laravel 11 backend with API endpoints</li>
          <li>✅ Vue.js 3 frontend with Composition API</li>
          <li>✅ Docker containerization</li>
          <li>✅ MySQL database</li>
          <li>✅ Redis caching</li>
        </ul>
      </section>

      <section class="api-test">
        <h3>Test API Connection</h3>
        <button @click="testApi" :disabled="loading" class="test-btn">
          {{ loading ? 'Testing...' : 'Test Laravel API' }}
        </button>
        <div v-if="apiResponse" class="response">
          <h4>API Response:</h4>
          <pre>{{ apiResponse }}</pre>
        </div>
      </section>

      <section class="counter">
        <h3>Vue.js Counter Demo</h3>
        <div class="counter-display">
          <button @click="decrement" class="counter-btn">-</button>
          <span class="counter-value">{{ count }}</span>
          <button @click="increment" class="counter-btn">+</button>
        </div>
        <p>This demonstrates Vue.js reactivity!</p>
      </section>
    </main>

    <footer class="footer">
      <p>Built with ❤️ using Laravel and Vue.js</p>
    </footer>
  </div>
</template>

<script setup>
import { ref } from 'vue'
import axios from 'axios'

const count = ref(0)
const loading = ref(false)
const apiResponse = ref(null)

const increment = () => {
  count.value++
}

const decrement = () => {
  count.value--
}

const testApi = async () => {
  loading.value = true
  try {
    const response = await axios.get('http://localhost:8000/api/health')
    apiResponse.value = response.data
  } catch (error) {
    apiResponse.value = {
      error: 'Failed to connect to Laravel API',
      message: error.message,
      status: error.response?.status
    }
  } finally {
    loading.value = false
  }
}
</script>

<style scoped>
.header {
  text-align: center;
  padding: 2rem;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  color: white;
  margin-bottom: 2rem;
}

.header h1 {
  margin: 0;
  font-size: 2.5rem;
}

.header p {
  margin: 0.5rem 0 0 0;
  opacity: 0.9;
}

.main {
  max-width: 800px;
  margin: 0 auto;
  padding: 0 1rem;
}

.welcome {
  background: #f8f9fa;
  padding: 2rem;
  border-radius: 8px;
  margin-bottom: 2rem;
}

.welcome h2 {
  color: #333;
  margin-top: 0;
}

.welcome ul {
  text-align: left;
  margin: 1rem 0;
}

.welcome li {
  margin: 0.5rem 0;
}

.api-test, .counter {
  background: white;
  padding: 2rem;
  border-radius: 8px;
  box-shadow: 0 2px 4px rgba(0,0,0,0.1);
  margin-bottom: 2rem;
}

.test-btn {
  background: #007bff;
  color: white;
  border: none;
  padding: 0.75rem 1.5rem;
  border-radius: 4px;
  cursor: pointer;
  font-size: 1rem;
  transition: background 0.3s;
}

.test-btn:hover:not(:disabled) {
  background: #0056b3;
}

.test-btn:disabled {
  background: #6c757d;
  cursor: not-allowed;
}

.response {
  margin-top: 1rem;
  padding: 1rem;
  background: #f8f9fa;
  border-radius: 4px;
  border-left: 4px solid #007bff;
}

.response pre {
  margin: 0;
  white-space: pre-wrap;
  font-family: 'Courier New', monospace;
  font-size: 0.9rem;
}

.counter-display {
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 1rem;
  margin: 1rem 0;
}

.counter-btn {
  background: #28a745;
  color: white;
  border: none;
  width: 40px;
  height: 40px;
  border-radius: 50%;
  cursor: pointer;
  font-size: 1.2rem;
  transition: background 0.3s;
}

.counter-btn:hover {
  background: #218838;
}

.counter-value {
  font-size: 2rem;
  font-weight: bold;
  color: #333;
  min-width: 60px;
  text-align: center;
}

.footer {
  text-align: center;
  padding: 2rem;
  background: #343a40;
  color: white;
  margin-top: 2rem;
}

.footer p {
  margin: 0;
}
</style>


