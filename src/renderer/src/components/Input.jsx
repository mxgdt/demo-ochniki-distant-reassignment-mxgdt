import PropTypes from 'prop-types';

const Input = ({ label, sev, addClass, input, type, required, value }) => {
    const getSeveryty = (sev) => {
        switch (sev) {
            case 'danger':
                return 'bg-red-500'
            default:
                return 'bg-[]'
        }
    }
    return (
        <div className="flex flex-col flex-1">
            <label>{label}</label>
            <input value={value} required={required} type={type} onChange={(e) => input(e.target.value)} className={`border border-[#B11AED] p-1 rounded  text-sm hover:opacity-80 focus:outline-none  ${getSeveryty(sev)} ${addClass}`} />
        </div>
    )
}

Input.propTypes = {
    label: PropTypes.string,
    sev: PropTypes.string,
    addClass: PropTypes.string,
    input: PropTypes.func,
    type: PropTypes.string,
    required: PropTypes.bool,
    value: PropTypes.any

}

export default Input