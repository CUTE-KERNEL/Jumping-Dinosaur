using UnityEngine;

namespace Assets.Template.Script
{
    public class SDestroyByLifetime : MonoBehaviour
    {
        private float _curTime = 0f;
        private GameObject _destroy;
        private float _lifetime;

        public void Update()
        {
            if (this._destroy != null)
            {
                this._curTime += Time.deltaTime;
                if (this._curTime >= this._lifetime)
                    GameObject.Destroy(this._destroy);
            }
        }

        public void Init(GameObject toDestroy, float lifetime)
        {
            this._curTime = 0f;
            this._destroy = toDestroy;
            this._lifetime = lifetime;
        }
    }
}
