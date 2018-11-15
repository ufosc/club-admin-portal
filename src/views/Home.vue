<template>
  <div class="home">
    <h1>Open Source Club admin portal</h1>
    <login @authenticated="setAuthenticated"></login>
  </div>
</template>

<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
import HelloWorld from "@/components/HelloWorld.vue"; // @ is an alias to /src
import login from "@/components/login.vue"; 

export default {
 data: {
    authenticated: false,
  },
  components: {
    HelloWorld, login
  },
  methods: {
     setAuthenticated(isAuth : boolean) {
        console.log("Authentication is: " + isAuth);
        this.authenticated = isAuth;
        this.$emit("authenticated", true);
      },
  }
}
</script>
