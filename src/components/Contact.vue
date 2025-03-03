<script setup lang="ts">
import content from '../data/content.json';
const { personalInfo } = content;

const mailtoLink = `mailto:${personalInfo.email}?subject=Contact from Portfolio&body=Hello ${personalInfo.name},%0D%0A%0D%0AI would like to get in touch with you regarding...`;
</script>

<template>
  <section id="contact" class="py-20 bg-gray-50">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
      <h2 class="section-title">Get in Touch</h2>
      
      <div class="max-w-2xl mx-auto text-center">
        <p class="text-gray-600 mb-8 text-lg">
          I'm always open to discussing new projects, opportunities, or partnerships.
          Feel free to reach out to me via email.
        </p>
        
        <a :href="mailtoLink"
           class="inline-flex items-center px-6 py-3 border border-blue-600 text-blue-600 rounded-lg hover:bg-blue-50 transition-colors">
          <svg class="w-5 h-5 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" />
          </svg>
          Send me an email
        </a>
      </div>
    </div>
  </section>
</template>