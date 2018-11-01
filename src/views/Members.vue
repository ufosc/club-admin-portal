<template>
  <div>
    <Member v-for="member in members" :key="member.githubUname" :details="member" />

  </div>
</template>

<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
import Member from "@/components/Member.vue";

@Component({
  components: {
    Member,
  },
})
export default class Members extends Vue {
  private members = [
    {
      fname: "Ankit",
      lname: "Soni",
      discordUname: "BheruLal",
      githubUname: "ankitprahladsoni",
      serverUname: "sName1",
      acmSharable: true,
      isInEmailList: true,
    },
  ];
}
</script>

<style lang="scss" scoped>
</style>

