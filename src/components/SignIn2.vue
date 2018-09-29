Vue.component('SignIn2', {
    props: [],
    template: 
      `<div class="FormArea">
        <h1>Sign in:</h1>
        <form>
            <p>Username: </p><br>
            <input v-model="username" placeholder="username" required><br>
            <p>Password: </p><br>
            <input v-model="password" placeholder="password" type="hidden" required><br><br>
            <input type="submit" value="Submit">
        </form>
    </div>`
    
  });
<script lang="ts">
  import { Component, Prop, Vue } from "vue-property-decorator";

  @Component
  export default class SignIn2 extends Vue {
  }
</script>

