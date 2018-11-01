<template>
  <div>
    <table>
      <tr>
        <td>First Name:</td>
        <td>{{details.fname}}</td>
      </tr>
      <tr>
        <td>Last Name:</td>
        <td>{{details.lname}}</td>
      </tr>
      <tr>
        <td>Discord Username:</td>
        <td>{{details.discordUname}}</td>
      </tr>
      <tr>
        <td>Github Username:</td>
        <td>{{details.githubUname}}</td>
      </tr>
      <tr>
        <td>Server Username:</td>
        <td>{{details.serverUname}}</td>
      </tr>
      <tr>
        <td>ACM Sharable:</td>
        <td>{{details.acmSharable}}</td>
      </tr>
      <tr>
        <td>Is in email list?:</td>
        <td>{{details.isInEmailList}}</td>
      </tr>
    </table>
  </div>
</template>

<script lang="ts">
import { Component, Prop, Vue } from "vue-property-decorator";

@Component
export default class Member extends Vue {
  @Prop()
  private details!: string;
}
</script>

<style scoped lang="scss">
td{
  text-align: left;
}
</style>
