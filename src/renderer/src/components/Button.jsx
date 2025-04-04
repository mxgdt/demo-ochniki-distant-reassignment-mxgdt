import PropTypes from 'prop-types';

const Button = ({ label, sev, addClass, onClick }) => {
    const getSeveryty = (sev) => {
        switch (sev) {
            case 'danger':
                return 'bg-red-500'
            default:
                return 'bg-[#B11AED]'
        }
    }
    return (
        <button onClick={onClick} className={`bg-[#B11AED] p-1 rounded cursor-pointer  text-sm hover:opacity-80 text-white ${getSeveryty(sev)} ${addClass}`}>{label}</button>
    )
}

Button.propTypes = {
    label: PropTypes.string,
    sev: PropTypes.string,
    addClass: PropTypes.string,
    onClick: PropTypes.func

}

export default Button