import React from 'react'
import { Button } from '@repo/ui/button'

import HeroSection from './sections/hero'

export default function HomePage() {
  return (
    <main>
      <HeroSection />
      <Button>Click Me</Button>
    </main>
  )
}
