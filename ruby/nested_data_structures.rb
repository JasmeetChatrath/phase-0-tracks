study_groups = {
  bears: {
    members: [
      "Sam",
      "Katie",
      "John"
    ],
    topic: "Global warming",
    grade: 87
  },
  lions: {
      members: [
        "Priya",
        "John",
        "Elizabeth"
      ],
      topic: "Advertising",
      grade: 73
  },
  seahawks: {
      members: [
        "Emily",
        "Steve",
        "Amelia"
      ],
      topic: "Dog trainging",
      grade: 98
  }
}

p study_groups[:bears][:topic]
p study_groups[:seahawks][:grade]
p study_groups[:lions][:members][2]
study_groups[:lions][:members].push ("Yogi")
p study_groups[:lions][:members]