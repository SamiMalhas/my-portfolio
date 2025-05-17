'use client'
import {
  Heart,
  Compass,
  ChevronLeft,
  ChevronRight,
  Brain,
  Sparkles,
  Rocket,
  CheckCircle2,
  Code,
  Cpu,
  Database,
  Globe,
  Layers,
  Lightbulb,
  PenTool,
  Terminal,
  Zap,
  Star,
} from 'lucide-react'
import { AnimatePresence, motion, useScroll, useSpring, useTransform } from 'motion/react'
import React, { useState } from 'react'

function About() {
  const { scrollYProgress } = useScroll()
  const x = useSpring(scrollYProgress, { damping: 50 })
  const bottomCloudY = useTransform(x, [0, 0.6], ['0%', '-50%'])

  const [activeExperience, setActiveExperience] = useState(0)
  const [activeSkillCategory, setActiveSkillCategory] = useState('current')

  const experiences = [
    {
      role: 'Senior Developer',
      company: 'Tech Co.',
      period: '2020 - Present',
      description: 'Leading development of web applications and mentoring junior developers.',
      color: '#FF5757',
      icon: <Rocket className="w-8 h-8" />,
    },
    {
      role: 'Web Developer',
      company: 'Agency Inc.',
      period: '2018 - 2020',
      description: 'Built responsive websites and e-commerce solutions for various clients.',
      color: '#5CE1E6',
      icon: <Zap className="w-8 h-8" />,
    },
    {
      role: 'Junior Developer',
      company: 'Startup Ltd.',
      period: '2016 - 2018',
      description: 'Developed UI components and implemented responsive designs.',
      color: '#FFDE59',
      icon: <Star className="w-8 h-8" />,
    },
  ]
  const skillCategories = {
    current: {
      title: 'CURRENT STACK',
      color: '#FF5757',
      icon: <CheckCircle2 className="w-6 h-6" />,
      groups: [
        {
          name: 'Frontend',
          icon: <Layers className="w-5 h-5" />,
          skills: [
            { name: 'React', isFavorite: true, projects: 12, icon: <Code className="w-4 h-4" /> },
            { name: 'Next.js', isFavorite: true, projects: 8, icon: <Globe className="w-4 h-4" /> },
            {
              name: 'TypeScript',
              isFavorite: true,
              projects: 10,
              icon: <Code className="w-4 h-4" />,
            },
            {
              name: 'Tailwind CSS',
              isFavorite: true,
              projects: 15,
              icon: <PenTool className="w-4 h-4" />,
            },
          ],
        },
        {
          name: 'Backend',
          icon: <Cpu className="w-5 h-5" />,
          skills: [
            {
              name: 'Node.js',
              isFavorite: true,
              projects: 9,
              icon: <Terminal className="w-4 h-4" />,
            },
            {
              name: 'MongoDB',
              isFavorite: false,
              projects: 7,
              icon: <Database className="w-4 h-4" />,
            },
            {
              name: 'PostgreSQL',
              isFavorite: false,
              projects: 5,
              icon: <Database className="w-4 h-4" />,
            },
            {
              name: 'GraphQL',
              isFavorite: false,
              projects: 4,
              icon: <Globe className="w-4 h-4" />,
            },
          ],
        },
        {
          name: 'Tools',
          icon: <Terminal className="w-5 h-5" />,
          skills: [
            { name: 'Git', isFavorite: false, projects: 20, icon: <Code className="w-4 h-4" /> },
            { name: 'Docker', isFavorite: false, projects: 6, icon: <Cpu className="w-4 h-4" /> },
            {
              name: 'Figma',
              isFavorite: false,
              projects: 8,
              icon: <PenTool className="w-4 h-4" />,
            },
          ],
        },
      ],
    },
    learning: {
      title: 'LEARNING NEXT',
      color: '#5CE1E6',
      icon: <Lightbulb className="w-6 h-6" />,
      skills: [
        { name: 'Rust', interest: 'Systems Programming', icon: <Cpu className="w-5 h-5" /> },
        { name: 'WebAssembly', interest: 'Performance', icon: <Zap className="w-5 h-5" /> },
        { name: 'Three.js', interest: '3D Visualization', icon: <Layers className="w-5 h-5" /> },
        { name: 'AI/ML', interest: 'Smart Applications', icon: <Brain className="w-5 h-5" /> },
        {
          name: 'Blockchain',
          interest: 'Web3 Development',
          icon: <Database className="w-5 h-5" />,
        },
        { name: 'AR/VR', interest: 'Immersive Experiences', icon: <Globe className="w-5 h-5" /> },
      ],
    },
  }
  return (
    <div className="relative">
      {/* Connector between parallax and about section */}
      <div className="absolute w-full h-24 bg-background-secondary top-0 transform -translate-y-full z-20"></div>

      {/* About section with parallax effect */}
      <motion.div style={{ y: bottomCloudY }} className="relative z-20">
        <section
          id="about"
          className="py-20 px-6 z-20 bg-background-secondary relative overflow-hidden"
        >
          {/* Decorative elements */}
          <div className="absolute top-10 right-10 w-20 h-20 bg-white rotate-12 border-[3px] border-black"></div>
          <div className="absolute bottom-20 left-10 w-16 h-16 bg-[#FF5757] -rotate-12 border-[3px] border-black"></div>
          <div className="absolute top-40 left-20 w-12 h-12 bg-[#FFDE59] rotate-45 border-[3px] border-black"></div>

          <div className="max-w-7xl mx-auto relative z-10">
            {/* Section Title with Animation */}
            <motion.div
              initial={{ x: -100, opacity: 0 }}
              whileInView={{ x: 0, opacity: 1 }}
              viewport={{ once: true }}
              transition={{ duration: 0.6 }}
              className="inline-block bg-white border-[4px] border-black shadow-[6px_6px_0px_0px_rgba(0,0,0,1)] px-6 py-3 mb-16 relative"
            >
              <h2 className="text-4xl font-black">ABOUT ME</h2>
              <div className="absolute -bottom-2 -right-2 w-12 h-12 bg-[#FF5757] border-[3px] border-black -z-10"></div>
            </motion.div>

            {/* Main Content */}
            <div className="grid grid-cols-1 lg:grid-cols-3 gap-8 mb-16">
              {/* Who Am I - Column 1 */}
              <motion.div
                initial={{ y: 50, opacity: 0 }}
                whileInView={{ y: 0, opacity: 1 }}
                viewport={{ once: true }}
                transition={{ duration: 0.6 }}
                className="lg:col-span-1 relative"
              >
                <div className="bg-white border-[4px] border-black shadow-[8px_8px_0px_0px_rgba(0,0,0,1)] p-8 h-full">
                  <div className="absolute -top-5 -left-5 w-10 h-10 bg-[#FFDE59] border-[3px] border-black"></div>

                  <h3 className="text-3xl font-bold mb-6 relative inline-block">
                    <span>WHO AM I</span>
                    <div className="absolute bottom-0 left-0 w-full h-3 bg-[#5CE1E6] -z-10"></div>
                  </h3>

                  <div className="relative mb-8 overflow-hidden">
                    <div className="w-32 h-32 mx-auto bg-[#FF5757] rounded-full border-[4px] border-black flex items-center justify-center mb-4">
                      <span className="text-5xl font-black">JD</span>
                    </div>
                  </div>

                  <p className="text-lg mb-4 relative">
                    I&apos;m a{' '}
                    <span className="font-bold bg-[#FFDE59] px-1">full-stack developer</span> with a
                    passion for creating beautiful, functional websites and applications.
                  </p>

                  <p className="text-lg mb-6">
                    With over{' '}
                    <span className="font-bold bg-[#5CE1E6] px-1">5 years of experience</span>,
                    I&apos;ve worked on projects from small business websites to large-scale
                    enterprise applications.
                  </p>

                  <motion.div
                    whileHover={{ scale: 1.05, rotate: -1 }}
                    className="inline-block bg-black text-white font-bold py-2 px-4 border-[3px] border-black"
                  >
                    DOWNLOAD RESUME
                  </motion.div>
                </div>
              </motion.div>

              {/* Skills - Column 2 - COMPLETELY REDESIGNED */}
              <motion.div
                initial={{ y: 50, opacity: 0 }}
                whileInView={{ y: 0, opacity: 1 }}
                viewport={{ once: true }}
                transition={{ duration: 0.6, delay: 0.2 }}
                className="lg:col-span-1 relative"
              >
                <div className="bg-[#FF5757] border-[4px] border-black shadow-[8px_8px_0px_0px_rgba(0,0,0,1)] p-8 h-full">
                  <div className="absolute -top-5 -right-5 w-10 h-10 bg-[#5CE1E6] border-[3px] border-black"></div>

                  <h3 className="text-3xl font-bold mb-6 relative inline-block">
                    <span>SKILLS</span>
                    <div className="absolute bottom-0 left-0 w-full h-3 bg-white -z-10"></div>
                  </h3>

                  {/* Skill Category Tabs */}
                  <div className="flex mb-6 gap-2">
                    {Object.entries(skillCategories).map(([key, category]) => (
                      <motion.button
                        key={key}
                        whileHover={{ y: -2 }}
                        whileTap={{ y: 0 }}
                        onClick={() => setActiveSkillCategory(key)}
                        className={`flex items-center gap-1 px-3 py-2 font-bold text-sm border-[3px] border-black ${
                          activeSkillCategory === key
                            ? 'bg-white shadow-[4px_4px_0px_0px_rgba(0,0,0,1)]'
                            : 'bg-gray-200'
                        }`}
                      >
                        {category.icon}
                        {category.title}
                      </motion.button>
                    ))}
                  </div>

                  {/* Skills Content */}
                  <div className="bg-white border-[3px] border-black p-4 overflow-hidden">
                    <AnimatePresence mode="wait">
                      {activeSkillCategory === 'current' ? (
                        <motion.div
                          key="current"
                          initial={{ opacity: 0, y: 20 }}
                          animate={{ opacity: 1, y: 0 }}
                          exit={{ opacity: 0, y: -20 }}
                          transition={{ duration: 0.3 }}
                          className="space-y-6"
                        >
                          {skillCategories.current.groups.map((group, groupIndex) => (
                            <div key={group.name} className="space-y-3">
                              <div className="flex items-center gap-2 bg-[#FFDE59] px-3 py-2 border-[3px] border-black">
                                {group.icon}
                                <span className="font-bold">{group.name}</span>
                              </div>

                              <div className="grid grid-cols-2 gap-2">
                                {group.skills.map((skill, index) => (
                                  <motion.div
                                    key={skill.name}
                                    initial={{ opacity: 0, scale: 0.8 }}
                                    animate={{ opacity: 1, scale: 1 }}
                                    transition={{ delay: index * 0.1 + groupIndex * 0.2 }}
                                    whileHover={{ y: -3, scale: 1.03 }}
                                    className={`relative border-[3px] border-black p-3 ${
                                      skill.isFavorite ? 'bg-[#FF5757] text-white' : 'bg-gray-100'
                                    }`}
                                  >
                                    <div className="flex items-center justify-between mb-1">
                                      <span className="font-bold">{skill.name}</span>
                                      {skill.icon}
                                    </div>

                                    {skill.isFavorite && (
                                      <div className="absolute -top-2 -right-2 bg-white w-6 h-6 rounded-full border-[2px] border-black flex items-center justify-center">
                                        <Heart className="w-3 h-3 fill-[#FF5757] text-[#FF5757]" />
                                      </div>
                                    )}
                                  </motion.div>
                                ))}
                              </div>
                            </div>
                          ))}

                          <div className="flex justify-center mt-2">
                            <div className="inline-block bg-black text-white text-xs font-bold px-3 py-1 border-[2px] border-black">
                              <div className="flex items-center gap-1">
                                <Heart className="w-3 h-3 fill-[#FF5757] text-[#FF5757]" />
                                <span>= FAVORITE TECH</span>
                              </div>
                            </div>
                          </div>
                        </motion.div>
                      ) : (
                        <motion.div
                          key="learning"
                          initial={{ opacity: 0, y: 20 }}
                          animate={{ opacity: 1, y: 0 }}
                          exit={{ opacity: 0, y: -20 }}
                          transition={{ duration: 0.3 }}
                          className="space-y-4"
                        >
                          <div className="mb-4 p-3 bg-[#5CE1E6] border-[3px] border-black">
                            <div className="flex items-center gap-2">
                              <Compass className="w-5 h-5" />
                              <span className="font-bold">EXPANDING MY HORIZONS</span>
                            </div>
                          </div>

                          <div className="grid grid-cols-2 gap-3">
                            {skillCategories.learning.skills.map((skill, index) => (
                              <motion.div
                                key={skill.name}
                                initial={{ opacity: 0, scale: 0.8 }}
                                animate={{ opacity: 1, scale: 1 }}
                                transition={{ delay: index * 0.1 }}
                                whileHover={{
                                  y: -5,
                                  backgroundColor: '#FFDE59',
                                  transition: { duration: 0.2 },
                                }}
                                className="relative bg-white border-[3px] border-black p-3 shadow-[4px_4px_0px_0px_rgba(0,0,0,1)]"
                              >
                                <div className="absolute -top-3 -left-3 bg-white w-8 h-8 border-[2px] border-black flex items-center justify-center">
                                  {skill.icon}
                                </div>
                                <div className="pt-2">
                                  <span className="font-bold text-lg">{skill.name}</span>
                                  <p className="text-sm mt-1">{skill.interest}</p>
                                </div>
                              </motion.div>
                            ))}
                          </div>
                        </motion.div>
                      )}
                    </AnimatePresence>
                  </div>
                </div>
              </motion.div>

              {/* Experience - Column 3 */}
              <motion.div
                initial={{ y: 50, opacity: 0 }}
                whileInView={{ y: 0, opacity: 1 }}
                viewport={{ once: true }}
                transition={{ duration: 0.6, delay: 0.4 }}
                className="lg:col-span-1 relative"
              >
                <div className="bg-[#5CE1E6] border-[4px] border-black shadow-[8px_8px_0px_0px_rgba(0,0,0,1)] p-8 h-full">
                  <div className="absolute -top-5 -left-5 w-10 h-10 bg-[#FF5757] border-[3px] border-black"></div>

                  <h3 className="text-3xl font-bold mb-6 relative inline-block">
                    <span>EXPERIENCE</span>
                    <div className="absolute bottom-0 left-0 w-full h-3 bg-[#FFDE59] -z-10"></div>
                  </h3>

                  {/* Experience Slider */}
                  <div className="relative">
                    <div className="bg-white border-[3px] border-black p-6 mb-4">
                      <AnimatePresence mode="wait">
                        <motion.div
                          key={activeExperience}
                          initial={{ opacity: 0, x: 50 }}
                          animate={{ opacity: 1, x: 0 }}
                          exit={{ opacity: 0, x: -50 }}
                          transition={{ duration: 0.3 }}
                        >
                          <div className="flex items-center gap-4 mb-4">
                            <div
                              className="w-16 h-16 flex items-center justify-center border-[3px] border-black"
                              style={{ backgroundColor: experiences[activeExperience]?.color }}
                            >
                              {experiences[activeExperience]?.icon}
                            </div>
                            <div>
                              <h4 className="text-xl font-bold">
                                {experiences[activeExperience]?.role}
                              </h4>
                              <p className="font-medium">
                                {experiences[activeExperience]?.company}
                              </p>
                            </div>
                          </div>
                          <div className="mb-4 inline-block bg-black text-white font-bold px-3 py-1">
                            {experiences[activeExperience]?.period}
                          </div>
                          <p>{experiences[activeExperience]?.description}</p>
                        </motion.div>
                      </AnimatePresence>
                    </div>

                    {/* Navigation Buttons */}
                    <div className="flex justify-between">
                      <motion.button
                        whileHover={{ scale: 1.1 }}
                        whileTap={{ scale: 0.9 }}
                        onClick={() =>
                          setActiveExperience((prev) =>
                            prev > 0 ? prev - 1 : experiences.length - 1,
                          )
                        }
                        className="bg-white w-12 h-12 flex items-center justify-center border-[3px] border-black shadow-[4px_4px_0px_0px_rgba(0,0,0,1)]"
                      >
                        <ChevronLeft className="w-6 h-6" />
                      </motion.button>

                      <div className="flex gap-2">
                        {experiences.map((_, index) => (
                          <motion.button
                            key={index}
                            whileHover={{ scale: 1.2 }}
                            whileTap={{ scale: 0.9 }}
                            onClick={() => setActiveExperience(index)}
                            className={`w-4 h-4 rounded-full border-2 border-black ${
                              activeExperience === index ? 'bg-black' : 'bg-white'
                            }`}
                          />
                        ))}
                      </div>

                      <motion.button
                        whileHover={{ scale: 1.1 }}
                        whileTap={{ scale: 0.9 }}
                        onClick={() =>
                          setActiveExperience((prev) =>
                            prev < experiences.length - 1 ? prev + 1 : 0,
                          )
                        }
                        className="bg-white w-12 h-12 flex items-center justify-center border-[3px] border-black shadow-[4px_4px_0px_0px_rgba(0,0,0,1)]"
                      >
                        <ChevronRight className="w-6 h-6" />
                      </motion.button>
                    </div>
                  </div>
                </div>
              </motion.div>
            </div>

            {/* Personal Traits */}
            <motion.div
              initial={{ y: 50, opacity: 0 }}
              whileInView={{ y: 0, opacity: 1 }}
              viewport={{ once: true }}
              transition={{ duration: 0.6, delay: 0.6 }}
              className="bg-white border-[4px] border-black shadow-[8px_8px_0px_0px_rgba(0,0,0,1)] p-8"
            >
              <h3 className="text-3xl font-bold mb-8 relative inline-block">
                <span>MY APPROACH</span>
                <div className="absolute bottom-0 left-0 w-full h-3 bg-[#8C52FF] -z-10"></div>
              </h3>

              <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
                {[
                  {
                    title: 'CREATIVE THINKING',
                    description:
                      'I approach problems from unique angles to find innovative solutions.',
                    icon: <Brain className="w-8 h-8" />,
                    color: '#FF5757',
                  },
                  {
                    title: 'USER-FOCUSED',
                    description: 'I prioritize user experience in every project I undertake.',
                    icon: <Sparkles className="w-8 h-8" />,
                    color: '#5CE1E6',
                  },
                  {
                    title: 'CONTINUOUS LEARNING',
                    description:
                      "I'm constantly expanding my skills and staying current with new technologies.",
                    icon: <Rocket className="w-8 h-8" />,
                    color: '#FFDE59',
                  },
                ].map((trait, index) => (
                  <motion.div
                    key={index}
                    whileHover={{ y: -5, rotate: index % 2 === 0 ? 1 : -1 }}
                    className="border-[3px] border-black overflow-hidden"
                  >
                    <div
                      className="h-16 border-b-[3px] border-black flex items-center justify-center"
                      style={{ backgroundColor: trait.color }}
                    >
                      {trait.icon}
                    </div>
                    <div className="p-4">
                      <h4 className="text-xl font-bold mb-2">{trait.title}</h4>
                      <p>{trait.description}</p>
                    </div>
                  </motion.div>
                ))}
              </div>
            </motion.div>
          </div>
        </section>
      </motion.div>
    </div>
  )
}

export default About
