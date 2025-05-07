import React from 'react'

import type { Page } from '@/payload-types'

import { HighImpactHero } from '@/sections/heros/HighImpact'
import { LowImpactHero } from '@/sections/heros/LowImpact'
import { MediumImpactHero } from '@/sections/heros/MediumImpact'

const heroes = {
  highImpact: HighImpactHero,
  lowImpact: LowImpactHero,
  mediumImpact: MediumImpactHero,
}

export const RenderHero: React.FC<Page['hero']> = (props) => {
  const { type } = props || {}

  if (!type || type === 'none') return null

  const HeroToRender = heroes[type]

  if (!HeroToRender) return null

  return <HeroToRender {...props} />
}
