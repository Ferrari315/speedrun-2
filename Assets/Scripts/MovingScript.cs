using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.InputSystem;

[RequireComponent(typeof(PlayerInput))]
public class InputManager : MonoBehaviour
{
    private Vector2 moveDirection = Vector2.zero;
    private bool jumpPressed = false;
    private bool interactPressed = false;
    private bool submitPressed = false;

    private static InputManager instance;

    private void Awake()
    {
        if (instance != null)
        {
            Debug.LogError("Found more than one Input Manager in the scene.");
            Destroy(gameObject); // Destroy the duplicate input manager.
        }
        instance = this;
    }

    public static InputManager GetInstance()
    {
        return instance;
    }

    public void MovePressed(InputAction.CallbackContext context)
    {
        moveDirection = context.ReadValue<Vector2>();
    }

    public void JumpPressed(InputAction.CallbackContext context)
    {
        jumpPressed = context.performed;
    }

    public void InteractButtonPressed(InputAction.CallbackContext context)
    {
        interactPressed = context.performed;
    }

    public void SubmitPressed(InputAction.CallbackContext context)
    {
        submitPressed = context.performed;
    }

    public Vector2 GetMoveDirection()
    {
        return moveDirection;
    }

    public bool GetJumpPressed()
    {
        return Consume(ref jumpPressed);
    }

    public bool GetInteractPressed()
    {
        return Consume(ref interactPressed);
    }

    public bool GetSubmitPressed()
    {
        return Consume(ref submitPressed);
    }

    private bool Consume(ref bool input)
    {
        bool result = input;
        input = false;
        return result;
    }
}

