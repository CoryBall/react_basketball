import { useGLTF } from '@react-three/drei'
import { Vector3 } from 'three'
import { RigidBody } from '@react-three/rapier';

const Ball = ({ position }: {
  position: Vector3
}) => {
  const { nodes, materials } = useGLTF('/models/basketball.glb')

  return (
    <group position={position} scale={0.7}>
      <RigidBody colliders="ball" restitution={1} friction={0.2} gravityScale={3.5}>
        <mesh
          position={position}
          geometry={nodes.Sphere.geometry}
          material={materials['Material.001']}
          castShadow
          receiveShadow
        />
      </RigidBody>
    </group>
    
  )
}

useGLTF.preload('/models/basketball.glb')

export default Ball;