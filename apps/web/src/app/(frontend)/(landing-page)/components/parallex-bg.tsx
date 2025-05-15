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
  const bottomCloudY = useTransform(x, [0, 0.5], ['0%', '-50%'])
  const bottomCloudScale = useTransform(x, [0, 0.5], [1, 1.5])

  return (
    <section className="relative w-full h-screen md:h-[1024px] lg:max-w-[1688.98px] lg:mx-auto bg-background overflow-hidden">
      <div className="relative w-full h-full bg-gradient-to-br from-[#fff] from-0% via-[#91C1FF] via-5% to-[#2E89FF] to-100%">
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
          className="absolute inset-0 h-[1170.38px] w-[1688.98px] -top-[155px] -left-24"
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
          className="absolute inset-0 w-screen"
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
          className="absolute inset-0"
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
          className="absolute inset-0 -bottom-32"
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
        <div className="absolute -bottom-5 z-10 w-full h-1/4 bg-background-secondary" />
      </div>
    </section>
  )
}
