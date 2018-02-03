using UnityEngine;

namespace Assets.Template.Script
{
    public class SLateralMove : MonoBehaviour
    {
        private const float DECELERATION = 0.95f;
        private const float DEFAULT_SPEED = 0.02f;
        private const float EPSILON = 0.0001f;

        private float _curSpeed = 0.0f;
        private bool _moveRight = false;

        public GameObject Handle;

	    public void Update()
        {
            if (Input.GetButton("RightKey"))
            {
                this._curSpeed = DEFAULT_SPEED;
                if (!this._moveRight)
                    this.Handle.transform.localRotation = Quaternion.Euler(0, 0, 0);
                this._moveRight = true;
            }
            else if (Input.GetButton("LeftKey"))
            {
                this._curSpeed = DEFAULT_SPEED;
                if (this._moveRight)
                    this.Handle.transform.localRotation = Quaternion.Euler(0, 180, 0);
                this._moveRight = false;
            }
            this.HandleCurSpeed();
            this.Move();
	    }

        private void HandleCurSpeed()
        {
            var animator = this.Handle.GetComponent<Animator>();
            this._curSpeed *= DECELERATION;
            if (this._curSpeed <= EPSILON)
                this._curSpeed = 0f;
            if (animator != null)
            {
                if (this._curSpeed > 0)
                    animator.SetBool("Moving", true);
                else
                    animator.SetBool("Moving", false);
            }
        }

        private void Move()
        {
            var newPosition = this.Handle.transform.position;
            if (this._moveRight)
                newPosition.x = (newPosition.x + this._curSpeed);
            else
                newPosition.x = (newPosition.x + (this._curSpeed * -1));
            this.Handle.transform.position = newPosition;
        }
    }
}
