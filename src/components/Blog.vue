<script setup lang="ts">
import content from '../data/content.json';
const { blogPosts } = content;
</script>

<template>
  <section id="blog" class="py-20 bg-gray-50">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
      <h2 class="section-title">Latest Blog Posts</h2>
      <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
        <article v-for="post in blogPosts" :key="post.title" class="card">
          <div class="mb-4">
            <time class="text-sm text-blue-600 font-medium">{{ post.date }}</time>
            <h3 class="text-xl font-semibold mt-2">
              <a :href="post.url" target="_blank" class="gradient-text hover:opacity-80">
                {{ post.title }}
              </a>
            </h3>
          </div>
          <p class="text-gray-600">{{ post.excerpt }}</p>
          <a :href="post.url" target="_blank" class="inline-flex items-center mt-4 text-blue-600 hover:text-blue-700 transition-colors">
            Read more
            <svg class="ml-2 h-5 w-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 8l4 4m0 0l-4 4m4-4H3" />
            </svg>
          </a>
        </article>
      </div>
    </div>
  </section>
</template>