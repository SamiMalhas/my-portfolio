import React from 'react'
import { Button } from '@repo/ui/components/ui/button'

import HeroSection from './sections/hero'

export default function HomePage() {
  return (
    <main>
      <HeroSection />
      <div style={{ padding: '20px' }}>
        <Button>Click Me</Button>
      </div>
    </main>
  )
}
