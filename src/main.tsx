import { StrictMode } from 'react'
import { createRoot } from 'react-dom/client'
import './index.css'
import { Canvas } from '@react-three/fiber'
import Experience from './Experience.tsx'
import Interface from './Interface.tsx'

createRoot(document.getElementById('root')!).render(
  <StrictMode>
    <Interface />
    <Canvas>
      <Experience />
    </Canvas>
  </StrictMode>,
)
