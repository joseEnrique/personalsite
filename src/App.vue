<script setup lang="ts">
import Header from './components/Header.vue'
import About from './components/About.vue'
import Projects from './components/Projects.vue'
import Blog from './components/Blog.vue'
import CV from './components/CV.vue'
import Contact from './components/Contact.vue'
</script>

<template>
  <div class="min-h-screen bg-white">
    <Header />
    <main>
      <About />
      <Projects />
      <Blog />
      <CV />
      <Contact />
    </main>
    <footer class="bg-gray-800 text-white py-8">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
        <p>&copy; {{ new Date().getFullYear() }} Quique Ruiz. All rights reserved.</p>
      </div>
    </footer>
  </div>
</template>