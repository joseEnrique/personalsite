<script setup lang="ts">
import content from '../data/content.json';
const { personalInfo } = content;
</script>

<template>
  <section id="about" class="py-20">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
      <h2 class="section-title">About Me</h2>
      <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
        <div class="card">
          <img :src="personalInfo.image" :alt="personalInfo.name" class="rounded-full w-48 h-48 mx-auto mb-6 border-4 border-blue-100">
          <h3 class="text-xl font-semibold mb-4 gradient-text">{{ personalInfo.name }}</h3>
          <p class="text-gray-600">{{ personalInfo.introduction }}</p>
        </div>
        <div class="card">
          <h3 class="text-xl font-semibold mb-4 gradient-text">Skills & Expertise</h3>
          <ul class="space-y-3">
            <li v-for="skill in personalInfo.skills" :key="skill" class="flex items-center bg-gray-50 p-3 rounded-lg border border-gray-200">
              <svg class="h-5 w-5 text-blue-600 mr-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7" />
              </svg>
              <span class="text-gray-600">{{ skill }}</span>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </section>
</template>