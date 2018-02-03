using UnityEngine;

namespace Assets.Template.Script
{
    public class SPerpetualJump : MonoBehaviour
    {
        private const float CEILING_EPSILON = 0.185f;
        private const float FLOOR_EPSILON = 0.005f;
        private readonly Vector3 FLOOR = new Vector3(0, 0f, 0);
        private readonly Vector3 HEIGHT = new Vector3(0, 1f, 0);
        private const float GRAVITY = 0.975f;
        private const float SPEED = 5f;

        private float _curGravity = GRAVITY;
        private bool _falling = false;

        public GameObject Handle;

	    public void Update()
        {
            if (this._curGravity <= CEILING_EPSILON)
            {
                this._falling = true;
                this._curGravity = GRAVITY;
            }
            else if (this.Handle.transform.position.y <= FLOOR_EPSILON)
            {
                this._falling = false;
                this._curGravity = GRAVITY;
            }

            if (!this._falling)
            {
                this._curGravity *= GRAVITY;
                float move = (SPEED * Time.deltaTime * this._curGravity);
                var newPosition = Vector3.Lerp(this.Handle.transform.position, HEIGHT, move);
                this.Handle.transform.position = newPosition;
            }
            else
            {
                this._curGravity /= GRAVITY;
                float move = (SPEED * Time.deltaTime * this._curGravity);
                var newPosition = Vector3.Lerp(this.Handle.transform.position, FLOOR, move);
                this.Handle.transform.position = newPosition;
            }
	    }
    }
}
