<?php

use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\Auth\registerController;
use App\Http\Controllers\Doctor\DoctorController;
use App\Http\Controllers\ExpenseController;
use App\Http\Controllers\Lab\LabController;
use App\Http\Controllers\Patient\DiseaseController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Patients\PatientController;
use App\Http\Controllers\Pharma\PharmaController;
use App\Http\Controllers\ScanInvoice\ScanInvoiceController;
use App\Http\Controllers\UserManagement\UserManagementController;

Route::get('/patientMakeAppointment', [PatientController::class, 'patientMakeAppointment'])
    ->name('patientMakeAppointment');
Route::get('/createAppointments', [PatientController::class, 'createAppointments'])
    ->name('createAppointments');
Route::post('/storeAppointments', [PatientController::class, 'storeAppointments'])
    ->name('storeAppointments');
Route::get('editAppointments/{id}', [PatientController::class, 'editAppointments'])->name('editAppointments');
Route::post('/admissionStore', [PatientController::class, 'admissionStore'])->name('admissionStore');
Route::post('/physicalExaminationStore', [PatientController::class, 'physicalExaminationStore'])->name('physicalExaminationStore');
Route::post('/patientDiseaseStore', [PatientController::class, 'patientDiseaseStore'])->name('patientDiseaseStore');


Route::post('/deleteAppointments', [PatientController::class, 'deleteAppointments'])
    ->name('deleteAppointments');
Route::get('/home', [PatientController::class, 'home'])
    ->name('home');
Route::get('/aboutUs', [PatientController::class, 'aboutUs'])
    ->name('aboutUs');
    Route::get('/reviewSchedule', [PatientController::class, 'reviewSchedule'])
    ->name('reviewSchedule');

Route::get('/LabView', [LabController::class, 'LabView'])
    ->name('LabView');
Route::get('/labCreate', [LabController::class, 'labCreate'])
    ->name('labCreate');

Route::post('/labStore', [LabController::class, 'labStore'])
    ->name('labStore');
Route::get('labsEdit/{id}', [LabController::class, 'labsEdit'])->name('labsEdit');
Route::post('/labsDelete', [LabController::class, 'labsDelete'])
    ->name('labsDelete');

Route::get('/get-lab-details', [LabController::class, 'getLabDetails'])->name('getLabDetails');

Route::get('/userView', [UserManagementController::class, 'userView'])
    ->name('userView');
Route::get('/userCreate', [UserManagementController::class, 'userCreate'])
    ->name('userCreate');

Route::post('/userStore', [UserManagementController::class, 'userStore'])
    ->name('userStore');
Route::get('userEdit/{id}', [UserManagementController::class, 'userEdit'])->name('userEdit');
Route::post('/userDelete', [UserManagementController::class, 'userDelete'])
    ->name('userDelete');




Route::get('/pharmaView', [PharmaController::class, 'pharmaView'])
    ->name('pharmaView');
Route::get('/pharmaCreate', [PharmaController::class, 'pharmaCreate'])
    ->name('pharmaCreate');

Route::post('/pharmaStore', [PharmaController::class, 'pharmaStore'])
    ->name('pharmaStore');
Route::get('pharmaEdit/{id}', [PharmaController::class, 'pharmaEdit'])->name('pharmaEdit');
Route::post('/pharmaDelete', [PharmaController::class, 'pharmaDelete'])
    ->name('pharmaDelete');


Route::get('/scanInvoiceView', [ScanInvoiceController::class, 'scanInvoiceView'])
    ->name('scanInvoiceView');
    Route::get('/taxInvoicePdf', [ScanInvoiceController::class, 'taxInvoicePdf'])
    ->name('taxInvoicePdf');
Route::get('/scanInvoiceCreate', [ScanInvoiceController::class, 'scanInvoiceCreate'])
    ->name('scanInvoiceCreate');

Route::post('scanInvoiceStore', [ScanInvoiceController::class, 'scanInvoiceStore'])
    ->name('scanInvoiceStore');
Route::get('scanInvoiceEdit/{id}', [ScanInvoiceController::class, 'scanInvoiceEdit'])->name('scanInvoiceEdit');
Route::post('scanInvoiceDelete', [ScanInvoiceController::class, 'scanInvoiceDelete'])
    ->name('scanInvoiceDelete');
Route::get('PatientList', [DoctorController::class, 'PatientList'])->name('PatientList');
Route::get('patientsCreate', [DoctorController::class, 'patientsCreate'])->name('patientsCreate');
Route::post('patientStore', [DoctorController::class, 'patientStore'])->name('patientStore');
Route::get('/patients/{id}/edit', [DoctorController::class, 'edit'])->name('patients.edit');
Route::delete('/patients/{id}', [DoctorController::class, 'destroy'])->name('patients.destroy');
Route::get('/appointment/{id}/approval', [DoctorController::class, 'approvalAppointment'])->name('appointment.approval');
Route::get('/PatientDetails/{id}', [DoctorController::class, 'PatientDetails'])->name('PatientDetails');
Route::get('/searchPatientDetails/{id}', [DoctorController::class, 'searchPatientDetails'])->name('searchPatientDetails');
Route::get('/schedulePatient/{id}', [DoctorController::class, 'schedulePatient'])->name('schedulePatient');

Route::get('viewAppointment', [DoctorController::class, 'viewAppointment'])->name('viewAppointment');
Route::get('diseasesView', [DiseaseController::class, 'diseasesView'])->name('diseasesView');
Route::get('promptSearch', [DiseaseController::class, 'promptSearch'])->name('promptSearch');
Route::get('dashboard', [DiseaseController::class, 'dashboard'])->name('dashboard');

Route::get('/expensesView', [ExpenseController::class, 'expensesView'])
    ->name('expensesView');
    Route::get('/ReportView', [ExpenseController::class, 'ReportView'])
    ->name('ReportView');
    Route::get('/medicinePurchase', [ExpenseController::class, 'medicinePurchase'])
    ->name('medicinePurchase');

Route::get('/expensesCreate', [ExpenseController::class, 'expensesCreate'])
    ->name('expensesCreate');
    Route::get('/expensesMaster', [ExpenseController::class, 'expensesMaster'])
    ->name('expensesMaster');

Route::post('expensesStore', [ExpenseController::class, 'expensesStore'])
    ->name('expensesStore');
Route::get('expensesEdit/{id}', [ExpenseController::class, 'expensesEdit'])->name('expensesEdit');
Route::post('expensesDelete', [ExpenseController::class, 'expensesDelete'])
    ->name('expensesDelete');
    Route::post('expensesMasterStore', [ExpenseController::class, 'expensesMasterStore'])
    ->name('expensesMasterStore');
    Route::post('generatePdf', [ExpenseController::class, 'generatePdf'])
    ->name('generatePdf');
    Route::post('expensesMaterDelete', [ExpenseController::class, 'expensesMaterDelete'])
    ->name('expensesMaterDelete');
    Route::get('expensesMasterIndex', [ExpenseController::class, 'expensesMasterIndex'])->name('expensesMasterIndex');
    Route::get('expensesMasterEdit/{id}', [ExpenseController::class, 'expensesMasterEdit'])->name('expensesMasterEdit');




Route::get('/search-diseases', [DiseaseController::class, 'searchDiseases'])->name('search.diseases');
Route::get('/get-disease', [DiseaseController::class, 'getDisease'])->name('get.disease');



Route::get('/modality-master', [PharmaController::class, 'modalityMaster'])->name('modalityMaster');
Route::get('/therapy-master', [PharmaController::class, 'therapyMaster'])->name('therapyMaster');
Route::get('/bill-master', [PharmaController::class, 'billMaster'])->name('billMaster');
Route::get('/addMedicineStock', [PharmaController::class, 'addMedicineStock'])->name('addMedicineStock');
Route::post('/medicineStore', [PharmaController::class, 'medicineStore'])->name('medicineStore');
Route::get('/medicineEdit/{id}', [PharmaController::class, 'medicineStockEdit'])->name('medicineEdit');
Route::post('/medicineDelete', [PharmaController::class, 'medicineDelete'])->name('medicineDelete');

Route::get('/modality/{id}/edit', [PharmaController::class, 'editModality'])->name('modality.edit');
Route::put('/modality/{id}/update', [PharmaController::class, 'updateModality'])->name('modality.update');
Route::get('/modality/create', [PharmaController::class, 'createModality'])->name('modality.create');
Route::post('/modality/store', [PharmaController::class, 'storeModality'])->name('modality.store');



Route::get('/therapy/master', [PharmaController::class, 'therapyMaster'])->name('therapy.master');
Route::get('/therapy/create', [PharmaController::class, 'createTherapy'])->name('therapy.create');
Route::post('/therapy/store', [PharmaController::class, 'storeTherapy'])->name('therapy.store');
Route::get('/therapy/edit/{id}', [PharmaController::class, 'editTherapy'])->name('therapy.edit');
Route::post('/therapy/update/{id}', [PharmaController::class, 'updateTherapy'])->name('therapy.update');


Route::get('/bill/master', [PharmaController::class, 'billMaster'])->name('bill.master');
Route::get('/bill/create', [PharmaController::class, 'createBill'])->name('bill.create');
Route::post('/bill/store', [PharmaController::class, 'storeBill'])->name('bill.store');
Route::get('/bill/edit/{id}', [PharmaController::class, 'editBill'])->name('bill.edit');
Route::post('/bill/update/{id}', [PharmaController::class, 'updateBill'])->name('bill.update');




Route::prefix('auth')->middleware('guest')->name('auth.')->group(function () {
    Route::controller(LoginController::class)->group(function () {
        Route::get('/login', 'index')->name('login');
        Route::post('/login', 'authenticate')->name('login.submit');
    });

    Route::controller(registerController::class)->group(function () {
        Route::get('/register', 'index')->name('register');
        Route::post('/register', 'create')->name('register.submit');
    });
});
