using UnityEngine;

namespace Assets.Template.Script
{
    public class SJump : MonoBehaviour
    {
        private float _curSpeed;
        private bool _falling = false;
        private bool _jumping = false;

        public float Epsilon;
        public float Gravity;
        public float DefaultFallSpeed;
        public float DefaultJumpSpeed;
        public bool JumpParticles;
        public GameObject Handle;

        public void Update()
        {
            if (Input.GetButtonDown("Jump"))
            {
                this._curSpeed = DefaultJumpSpeed;
                this._jumping = true;
            }
            if (this._jumping)
                this.Jump();
        }

        private void AddJumpParticles()
        {
            var teaRex = GameObject.FindGameObjectWithTag("TeaRex");
            if (teaRex != null)
            {
                var position = teaRex.transform.position;
                var prefab = Resources.Load("Effects/Particles");
                var particles = GameObject.Instantiate(prefab) as GameObject;
                particles.transform.position = position;
                var renderer = particles.GetComponent<Renderer>();
                renderer.sortingLayerName = "Particles";
                var script = particles.AddComponent<SDestroyByLifetime>();
                script.Init(particles, 2f);
            }
        }

        private void Jump()
         {
            if (!this._falling)
            {
                this._curSpeed *= Gravity;
                float move = (this._curSpeed * Time.deltaTime);
                var newPosition = this.Handle.transform.position;
                newPosition.y += move;
                this.Handle.transform.position = newPosition;
                if (move <= Epsilon)
                {
                    this._curSpeed = DefaultFallSpeed;
                    this._falling = true;
                }
            }
            else
            {
                this._curSpeed /= Gravity;
                float move = (this._curSpeed * Time.deltaTime);
                var newPosition = this.Handle.transform.position;
                newPosition.y -= move;
                this.Handle.transform.position = newPosition;
                if (newPosition.y <= Epsilon)
                {
                    this._curSpeed = 0f;
                    this._falling = false;
                    this._jumping = false;
                    newPosition.y = 0f;
                    this.Handle.transform.position = newPosition;
                    if (this.JumpParticles)
                        this.AddJumpParticles();
                }
            }
        }
    }
}