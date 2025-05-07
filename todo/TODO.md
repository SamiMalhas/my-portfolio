# Home Page Implementation TODO

1.  **Create Hero Section Component (`components/sections/Hero.tsx`):**

    - Display Headline: "Sami Malhas"
    - Display Title: "Full-Stack JavaScript Developer"
    - Display Elevator Pitch: "I build production-ready Next.js apps that blend polished TypeScript front-ends with scalable back-ends."
    - Add CTA Buttons: "View My Work" (link to Work page) & "Contact Me" (link to Contact page).

2.  **Create "About Me" Snapshot Component (`components/sections/AboutMeSnapshot.tsx`):**

    - Display Brief Bio: "With MERAKI Academy training and hands-on experience shipping full-stack apps—incl. BRRC (Next.js/Prisma) and StorySpot (MERN)—I turn ideas into scalable, user-focused products."
    - Display Key Metrics:
      - 400-hour immersive bootcamp graduate
      - 2+ production-grade apps deployed on Vercel & Railway
      - B.Sc. Energy Engineering, A-grade (97.5%)

3.  **Create Featured Projects Preview Component (`components/sections/FeaturedProjects.tsx`):**

    - Fetch/display 2-3 featured projects.
    - Create `ProjectCard` component (`components/ui/ProjectCard.tsx`) to show:
      - Project title + brief description
      - Tech stack icons
      - "Learn More" link.

4.  **Create Core Skills & Tech Stack Component (`components/sections/TechStack.tsx`):**

    - Display icons/list: JavaScript · TypeScript · React · Next.js · Prisma · PostgreSQL · Supabase · TailwindCSS · ShadCN · Framer Motion · Sentry.
    - (Optional) Implement hover effect.

5.  **Create Social Proof / Testimonials Component (`components/sections/Testimonials.tsx`):**

    - Display logos (e.g., MERAKI, Power Source) or quotes.

6.  **Create Blog Teaser Component (`components/sections/BlogTeaser.tsx`):** (If adding a blog)

    - Display latest post snippet (Title, excerpt, "Read More" link).

7.  **Create Footer Component (`components/layout/Footer.tsx`):**

    - Add Quick Links: Home · Work · Blog · Contact.
    - Add Contact Button/Link: "Let's build something together" → `mailto:sami.mal@outlook.com`.
    - Add Social Icons: GitHub · LinkedIn.

8.  **Assemble Home Page (`app/page.tsx`):**
    - Integrate all the above section components.
    - Ensure layout, styling, and responsiveness.
