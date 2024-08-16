import { Center, Environment, OrbitControls } from '@react-three/drei';
import Table from './components/Table';
import Ball from './components/Ball';
import { Vector3 } from 'three';
import { Physics } from '@react-three/rapier';

const Experience = () => {
  return (
    <>
      <color attach="background" args={["#ddc28d"]} />

      <ambientLight />
      <directionalLight position={[0, 1, 2]} intensity={1.5} />
      <Environment preset="city" />

      <OrbitControls makeDefault />

      <Physics>
        <Center>
          <Table position={new Vector3(0, 0, 0)} />
          <Ball position={new Vector3(0.25, 1.5, 0.2)} />
        </Center>
      </Physics>
    </>
  );
}

export default Experience;