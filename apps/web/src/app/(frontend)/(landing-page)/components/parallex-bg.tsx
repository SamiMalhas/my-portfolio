'use client'

import React from 'react'
import { motion, useScroll, useTransform, useSpring } from 'motion/react'

export default function ParallexBg() {
  const { scrollYProgress } = useScroll()
  const x = useSpring(scrollYProgress, { damping: 50 })
  const heroY = useTransform(x, [0, 0.5], ['0%', '30%'])
  const mountain1Y = useTransform(x, [0, 0.5], ['0%', '5%'])
  const mountain2Y = useTransform(x, [0, 0.5], ['0%', '15%'])
  const mountain3Y = useTransform(x, [0, 0.5], ['0%', '30%'])
  const mountain4Y = useTransform(x, [0, 0.5], ['0%', '45%'])
  const cloud1X = useTransform(x, [0, 0.5], ['0%', '-10%'])
  const cloud2X = useTransform(x, [0, 0.5], ['0%', '15%'])
  const bottomCloudY = useTransform(x, [0, 0.7], ['0%', '-120%'])
  const bottomCloudScale = useTransform(x, [0, 0.5], [1, 1.5])

  return (
    <div className="relative h-[900px] md:h-[100vh] xl:h-[130vh] bg-gradient-to-br from-[#fff] from-0% via-[#91C1FF] via-5% to-[#2E89FF] to-100%">
      <section className="absolute inset-0 max-w-screen">
        <div className="relative h-[900px] top-[10vh] md:h-[100vh] xl:h-[130vh] md:top-[10vh] overflow-hidden">
          {/* Sky Cloud 1 */}
          <motion.div
            initial={{ opacity: 0, x: 300 }}
            animate={{ opacity: 1, x: 0 }}
            transition={{ duration: 2, ease: 'easeOut' }}
            className="absolute inset-0"
            style={{
              backgroundImage: 'url(/hero-section/Cloud-1.png)',
              backgroundPosition: 'center',
              backgroundRepeat: 'no-repeat',
              backgroundSize: 'contain',
              x: cloud1X,
              zIndex: 5,
            }}
          />
          {/* Sky Cloud 2 */}
          <motion.div
            initial={{ opacity: 0, x: -300 }}
            animate={{ opacity: 1, x: 0 }}
            transition={{ duration: 2, ease: 'easeOut' }}
            className="absolute inset-0"
            style={{
              backgroundImage: 'url(/hero-section/Cloud-2.png)',
              backgroundPosition: 'center',
              backgroundRepeat: 'no-repeat',
              backgroundSize: 'contain',
              x: cloud2X,
              zIndex: 5,
            }}
          />
          {/* Mountain Layer 1 */}
          <motion.div
            className="absolute inset-0 w-full max-w-[700px] md:max-w-[1100px] lg:max-w-[1500px] left-1/2 -translate-x-1/2"
            style={{
              backgroundImage: 'url(/hero-section/Mountain-1.png)',
              backgroundPosition: 'bottom',
              backgroundSize: 'cover',
              y: mountain1Y,
              zIndex: 5,
            }}
          />
          {/* Mountain Layer 2 */}
          <motion.div
            className="absolute inset-0"
            style={{
              backgroundImage: 'url(/hero-section/Mountain-2.png)',
              backgroundPosition: 'bottom',
              backgroundSize: 'cover',
              y: mountain2Y,
              zIndex: 4,
            }}
          />
          {/* Mountain Layer 3 */}
          <motion.div
            className="absolute inset-0"
            style={{
              backgroundImage: 'url(/hero-section/Mountain-3.png)',
              backgroundPosition: 'bottom',
              backgroundSize: 'cover',
              y: mountain3Y,
              zIndex: 3,
            }}
          />
          {/* Mountain Layer 4 (closest) */}
          <motion.div
            className="absolute inset-0"
            style={{
              backgroundImage: 'url(/hero-section/Mountain-4.png)',
              backgroundPosition: 'bottom',
              backgroundSize: 'cover',
              y: mountain4Y,
              zIndex: 2,
            }}
          />
          {/* Hero Character (on top of mountains, under bottom cloud) */}
          <motion.div
            initial={{ opacity: 0, y: 20 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ duration: 0.8, ease: 'easeOut' }}
            className="absolute inset-0 min-w-[900px] w-full top-0 left-1/2 -translate-x-1/2 md:min-w-[1100px] lg:min-w-[1500px] md:bottom-20"
            style={{
              backgroundImage: 'url(/hero-section/Hero-Character.png)',
              backgroundPosition: 'bottom',
              backgroundSize: 'contain',
              backgroundRepeat: 'no-repeat',
              y: heroY,
              zIndex: 6,
            }}
          />
          {/* Bottom Cloud (foreground, overlays everything) */}
          <motion.div
            className="absolute inset-0 w-screen -bottom-12 md:-bottom-24"
            style={{
              backgroundImage: 'url(/hero-section/Bottom-Cloud.png)',
              backgroundPosition: 'bottom',
              backgroundSize: 'cover',
              y: bottomCloudY,
              scale: bottomCloudScale,
              zIndex: 15,
              pointerEvents: 'none',
            }}
          />
          <div className="absolute h-[200px] bottom-0 md:-bottom-5 z-10 w-full md:h-1/4 bg-background-secondary" />
        </div>
      </section>
    </div>
  )
}
