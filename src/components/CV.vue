<script setup lang="ts">
import content from '../data/content.json';
const { experience, education } = content;
</script>

<template>
  <section id="cv" class="py-20">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
      <h2 class="section-title">Curriculum Vitae</h2>
      
      <!-- Experience -->
      <div class="card mb-8">
        <h3 class="text-xl font-semibold mb-6 gradient-text">Professional Experience</h3>
        <div class="space-y-6">
          <div v-for="job in experience" :key="job.title" class="border-l-4 border-blue-600 pl-4">
            <h4 class="text-lg font-semibold text-gray-800">{{ job.title }}</h4>
            <p class="text-gray-600">{{ job.company }}</p>
            <p class="text-sm text-blue-600">{{ job.period }}</p>
            <ul class="mt-2 list-disc list-inside text-gray-600">
              <li v-for="achievement in job.achievements" :key="achievement">{{ achievement }}</li>
            </ul>
          </div>
        </div>
      </div>

      <!-- Education -->
      <div class="card mb-8">
        <h3 class="text-xl font-semibold mb-6 gradient-text">Education</h3>
        <div class="space-y-6">
          <div v-for="edu in education" :key="edu.degree" class="border-l-4 border-blue-600 pl-4">
            <h4 class="text-lg font-semibold text-gray-800">{{ edu.degree }}</h4>
            <p class="text-gray-600">{{ edu.institution }}</p>
            <p class="text-sm text-blue-600">{{ edu.period }}</p>
            <p class="mt-2 text-gray-600">{{ edu.description }}</p>
          </div>
        </div>
      </div>

      <!-- Download CV Button -->
      <div class="text-center mt-8">
        <a href="/src/assets/cv.pdf" 
           download
           class="inline-flex items-center px-6 py-3 border border-blue-600 text-blue-600 rounded-lg hover:bg-blue-50 transition-colors">
          <svg class="w-5 h-5 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 10v6m0 0l-3-3m3 3l3-3m2 8H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z" />
          </svg>
          Download CV
        </a>
      </div>
    </div>
  </section>
</template>