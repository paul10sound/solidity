contract C {
    function f() public returns (uint, uint) {
        try this.f() {
        } catch Error2() {
        } catch abc() {
        }
    }
}
// ----
// TypeError 3542: (93-119): Invalid catch clause name. Expected either `catch (...)` or `catch Error(...)`.
// TypeError 3542: (120-143): Invalid catch clause name. Expected either `catch (...)` or `catch Error(...)`.
