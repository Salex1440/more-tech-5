import React from 'react'
import { useDispatch, useSelector } from 'react-redux'
import { setDestination, setVehicle } from '../../features/dataSlice'

const checkSelected = (type, value) => {
  return type === value ? 'button-vehicle active' : "button-vehicle"
}

export const ButtonContainer = (props) => {
  const vehicle = useSelector((state) => state.vtbData.vehicle)
  const dispatch = useDispatch()
  return (
    <>
    <div className='button-container button-route-container'>
      <button className='button-route'>
        <span onClick={() => {
          dispatch(setDestination({
            latitude: props.latitude,
            longitude: props.longitude
          }))
        }}>Проложить маршрут</span>
        <svg xmlns="http://www.w3.org/2000/svg" width="23" height="27" viewBox="0 0 23 27" fill="none">
          <path d="M2.03209 18.183C1.10955 17.2604 0.630025 16.1604 0.593527 14.883C0.557029 13.6056 0.974428 12.5312 1.84572 11.6599L8.32103 5.18462C8.00342 4.52377 7.88841 3.83476 7.976 3.1176C8.0636 2.40044 8.36537 1.78444 8.88131 1.26962C9.54138 0.609544 10.3471 0.293098 11.2983 0.320277C12.2496 0.347457 13.0747 0.710496 13.7736 1.4094C14.4725 2.10829 14.8355 2.93338 14.8627 3.88466C14.8899 4.83594 14.5735 5.64162 13.9134 6.30169C13.3985 6.81655 12.7823 7.11804 12.0646 7.20616C11.3469 7.29428 10.6581 7.17956 9.99839 6.86198L3.52308 13.3373C3.08743 13.7729 2.87874 14.3104 2.89701 14.9496C2.91527 15.5889 3.15502 16.1386 3.61627 16.5988C4.07754 17.0601 4.62781 17.2999 5.26707 17.3181C5.90633 17.3364 6.44324 17.1277 6.8778 16.692L14.7987 8.77114C15.67 7.89984 16.7443 7.48244 18.0218 7.51894C19.2992 7.55544 20.3992 8.03496 21.3217 8.95751C22.2443 9.88006 22.7238 10.98 22.7603 12.2575C22.7968 13.5349 22.3794 14.6093 21.5081 15.4806L15.0328 21.9559C15.3504 22.6167 15.4651 23.306 15.377 24.0237C15.2889 24.7414 14.9874 25.3571 14.4725 25.8709C13.8124 26.5309 13.0068 26.8474 12.0555 26.8202C11.1042 26.793 10.2791 26.43 9.58021 25.7311C8.88131 25.0322 8.51827 24.2071 8.49109 23.2558C8.46391 22.3045 8.78036 21.4989 9.44043 20.8388C9.95528 20.3239 10.5747 20.0193 11.2988 19.9248C12.0228 19.8304 12.7083 19.9483 13.3554 20.2785L19.8307 13.8032C20.2664 13.3676 20.4751 12.8301 20.4568 12.1909C20.4385 11.5516 20.1988 11.0019 19.7375 10.5417C19.2763 10.0804 18.726 9.84064 18.0867 9.82237C17.4475 9.80411 16.9106 10.0128 16.476 10.4485L8.55516 18.3694C7.68386 19.2407 6.6095 19.658 5.33206 19.6216C4.05463 19.5851 2.95464 19.1055 2.03209 18.183Z" fill="white"/>
        </svg>
      </button>
      <div>
        <svg xmlns="http://www.w3.org/2000/svg" width="47" height="47" viewBox="0 0 47 47" fill="none">
          <rect width="47" height="47" rx="10" fill="url(#paint0_linear_54_83)"/>
          <rect width="47" height="47" rx="10" fill="#196DFF"/>
          <path d="M17.625 21.4467C17.5255 21.4467 17.4302 21.4856 17.3598 21.5548C17.2895 21.6241 17.25 21.718 17.25 21.8159V31.4155C17.25 31.6193 17.418 31.7847 17.625 31.7847H30.375C30.4745 31.7847 30.5698 31.7458 30.6402 31.6766C30.7105 31.6073 30.75 31.5134 30.75 31.4155V21.8159C30.75 21.718 30.7105 21.6241 30.6402 21.5548C30.5698 21.4856 30.4745 21.4467 30.375 21.4467H28.875C28.5766 21.4467 28.2905 21.33 28.0795 21.1222C27.8685 20.9145 27.75 20.6328 27.75 20.339C27.75 20.0453 27.8685 19.7635 28.0795 19.5558C28.2905 19.3481 28.5766 19.2314 28.875 19.2314H30.375C31.824 19.2314 33 20.3892 33 21.8159V31.4155C33 32.1009 32.7234 32.7583 32.2312 33.243C31.7389 33.7277 31.0712 34 30.375 34H17.625C16.9288 34 16.2611 33.7277 15.7688 33.243C15.2766 32.7583 15 32.1009 15 31.4155V21.8159C15 20.3892 16.176 19.2314 17.625 19.2314H19.125C19.4234 19.2314 19.7095 19.3481 19.9205 19.5558C20.1315 19.7635 20.25 20.0453 20.25 20.339C20.25 20.6328 20.1315 20.9145 19.9205 21.1222C19.7095 21.33 19.4234 21.4467 19.125 21.4467H17.625ZM23.7345 12.1085C23.7693 12.0741 23.8107 12.0468 23.8563 12.0282C23.9018 12.0096 23.9507 12 24 12C24.0493 12 24.0982 12.0096 24.1437 12.0282C24.1893 12.0468 24.2307 12.0741 24.2655 12.1085L28.6095 16.3855C28.6621 16.4371 28.6979 16.5029 28.7124 16.5747C28.727 16.6464 28.7195 16.7207 28.6911 16.7883C28.6626 16.8558 28.6145 16.9135 28.5527 16.9541C28.4909 16.9946 28.4183 17.0162 28.344 17.0161H25.125V25.508C25.125 25.8018 25.0065 26.0835 24.7955 26.2913C24.5845 26.499 24.2984 26.6157 24 26.6157C23.7016 26.6157 23.4155 26.499 23.2045 26.2913C22.9935 26.0835 22.875 25.8018 22.875 25.508V17.0161H19.656C19.5817 17.0162 19.5091 16.9946 19.4473 16.9541C19.3855 16.9135 19.3373 16.8558 19.3089 16.7883C19.2805 16.7207 19.273 16.6464 19.2876 16.5747C19.3021 16.5029 19.3379 16.4371 19.3905 16.3855L23.7345 12.1085Z" fill="white"/>
          <defs>
            <linearGradient id="paint0_linear_54_83" x1="38.6071" y1="59.6098" x2="-4.38501" y2="56.3667" gradientUnits="userSpaceOnUse">
              <stop stop-color="#00AAFF"/>
              <stop offset="1" stop-color="#0A2896"/>
            </linearGradient>
          </defs>
        </svg>
      </div>
    </div>
    <div className='button-container button-container-vehicle'>
        <button className={checkSelected('foot', vehicle)} onClick={() => {dispatch(setVehicle('foot'))}}>пешком</button>
        <button className={checkSelected('car', vehicle)} onClick={() => {dispatch(setVehicle('car'))}}>нa машине</button>
    </div>
    </>
  )}