<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Agriculture Property</title>

<style>body{
    background:#eee;
}

.card {
    box-shadow: 0 20px 27px 0 rgb(0 0 0 / 5%);
}

.card {
    position: relative;
    display: flex;
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    background-color: #fff;
    background-clip: border-box;
    border: 0 solid rgba(0,0,0,.125);
    border-radius: 1rem;
}

.card-body {
    -webkit-box-flex: 1;
    -ms-flex: 1 1 auto;
    flex: 1 1 auto;
    padding: 1.5rem 1.5rem;
}
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
    <div class="container-fluid">

        
          <!-- Title -->
          <div class="d-flex justify-content-between align-items-lg-center py-3 flex-column flex-lg-row">
            <h2 class="h5 mb-3 mb-lg-0"><a href="../../pages/admin/customers.html" class="text-muted"><i class="bi bi-arrow-left-square me-2"></i></a> Agriculture Property</h2>
            <div class="hstack gap-3">
              <button class="btn btn-light btn-sm btn-icon-text"><i class="bi bi-x"></i> <span class="text">Cancel</span></button>
              <button class="btn btn-primary btn-sm btn-icon-text"><i class="bi bi-save"></i> <span class="text">Save</span></button>
            </div>
          </div>
        
          <!-- Main content -->
          <div class="row">
            <!-- Left side -->
            <div class="col-lg-8">
              <!-- Basic information -->
              <div class="card mb-4">
                <div class="card-body">
                    <h3 class="h6 mb-4">Property information</h3>
            
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="mb-3">
                                <label class="form-label">Property Name:</label>
                                <input type="text" class="form-control">
                            </div>
                        </div>
            
                        <div class="col-lg-4">
                            <div class="mb-3">
                                <label class="form-label" for="Property Type">Property Type:</label>
                                <select class="select2 form-control select2-hidden-accessible" data-select2-placeholder="Select country" data-select2-id="select2-data-1-gy14" tabindex="-1" aria-hidden="true">
                                    <option data-select2-id="select2-data-3-ibs9"></option>
                                    <option value="Farm">Farm</option>
                                    <option value="Ranch">Ranch</option>
                                    <option value="Orchard ">Orchard </option>
                                    <option value="Vineyard ">Vineyard </option>
                                    <option value="Plantation ">Plantation </option>
                                    <option value="Dairy Farm">Dairy Farm</option>
                                    <option value="Livestock Farm ">Livestock Farm </option>
                                    <option value="Poultry Farm">Poultry Farm </option>
                                    <option value="Arable Land ">Arable Land </option>
                                    <option value="Pasture Land ">Pasture Land </option>
                                    <option value="Other ">Other </option>
                                </select>
                            </div>
                        </div>
            
                        <div class="col-lg-4">
                            <div class="mb-3">
                                <label class="form-label">Price</label>
                                <input type="number" class="form-control" min="0">
                            </div>
                        </div>
                    </div>
            
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="mb-3">
                                <label class="form-label">Land Area</label>
                                <input type="number" class="form-control" min="0">
                            </div>
                        </div>
            
                        <div class="col-lg-4">
                            <div class="mb-3">
                                <label class="form-label">Land Use</label>
                                <input type="text" class="form-control" min="0">
                            </div>
                        </div>
            
                        <div class="col-lg-4">
                            <div class="mb-3">
                                <label class="form-label">Soil Type</label>
                                <select class="select2 form-control select2-hidden-accessible" data-select2-placeholder="Select country" data-select2-id="select2-data-1-gy14" tabindex="-1" aria-hidden="true">
                                    <option data-select2-id="select2-data-3-ibs9"></option>
                                    <option value="Red Soil">Red Soil</option>
                                    <option value="Black Soil">Black Soil</option>
                                    <option value="White Soil">White Soil</option>
                                    <option value="Sand Soil">Sand Soil</option>
                                    <option value="Other">Other</option>
                                </select>
                            </div>
                        </div>
                    </div>
            
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="mb-3">
                                <label class="form-label">Topology</label>
                                <select class="select2 form-control select2-hidden-accessible" data-select2-placeholder="Select country" data-select2-id="select2-data-1-gy14" tabindex="-1" aria-hidden="true">
                                    <option data-select2-id="select2-data-3-ibs9"></option>
                                    <option value="Flat Land">Flat Land</option>
                                    <option value="Sloping Land">Sloping Land</option>
                                    <option value="Hilly or Rolling Land ">Hilly or Rolling Land </option>
                                    <option value="Valleys ">Valleys </option>
                                    <option value="Plateaus ">Plateaus </option>
                                    <option value="Wetlands">Wetlands</option>
                                    <option value="Marshes ">Marshes </option>
                                    <option value="Wooded Areas">Wooded Areas </option>
                                    <option value="Desert or Arid Land ">Desert or Arid Land </option>
                                    <option value="Coastal Areas ">Coastal Areas</option>
                                    <option value="Other ">Other </option>
                                </select>
                            </div>
                        </div>
            
                        <div class="col-lg-4">
                            <div class="mb-3">
                                <label class="form-label">Type Of Ownership</label>
                                <select class="select2 form-control select2-hidden-accessible" data-select2-placeholder="Select country" data-select2-id="select2-data-1-gy14" tabindex="-1" aria-hidden="true">
                                    <option data-select2-id="select2-data-3-ibs9"></option>
                                    <option value="Office Buildings">Lease Hold</option>
                                    <option value="Office Buildings">Free Hold</option>
                                </select>
                            </div>
                        </div>
            
                        <div class="col-lg-4">
                            <div class="mb-3">
                                <label class="form-label">Construction Year</label>
                                <input type="number" class="form-control">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
              

              


              <!-- Address -->
              <div class="card mb-4">
                <div class="card-body">
                  <h3 class="h6 mb-4">Address Information</h3>
                  <div class="mb-3">
                    <label class="form-label">Street:</label>
                    <input type="text" class="form-control">
                  </div>
                  
                  <div class="row">
                    <div class="col-lg-4">
                      <div class="mb-3">
                        <label class="form-label">Area</label>
                        <input type="text" class="form-control">
                    </div>
                    </div>


                    <div class="col-lg-4">
                        <div class="mb-3">
                          <label class="form-label">Landmark</label>
                          <input type="text" class="form-control">
                        </div>
                      </div>
                      



                    <div class="col-lg-4">
                      <div class="mb-3">
                        <label class="form-label">Ward Number</label>
                        <input type="number" class="form-control" min="1">
                    </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-lg-4">
                      <div class="mb-3">
                        <label class="form-label">Zone</label>
                        <input type="number" class="form-control" min="1">
                    </div>
                    </div>


                    <div class="col-lg-4">
                        <div class="mb-3">
                          <label class="form-label">Scheme Number</label>
                          <input type="number" class="form-control" min="1">
                        </div>
                      </div>

                    <div class="col-lg-4">
                      <div class="mb-3">
                        <label class="form-label">City</label>
                        <input type="text" class="form-control">
                      </div>
                    </div>
                  </div>
      
                  <div class="row">
                    <div class="col-lg-4">
                      <div class="mb-3">
                        <label class="form-label">Zip Code</label>
                        <input type="number" class="form-control" min="0">
                    </div>
                    </div>


                    <div class="col-lg-4">
                        <div class="mb-3">
                          <label class="form-label">State</label>
                          <input type="text" class="form-control">

                          </div>
                      </div>

                    <div class="col-lg-4">
                      <div class="mb-3">
                        <label class="form-label">Countey</label>
                        <input type="text" class="form-control">
                      </div>
                    </div>
                  </div>

                </div>
              </div>
              






              <div class="card mb-4">
                <div class="card-body">
                  <h3 class="h6 mb-4">Other Details</h3>


                    <div class="row">
                        <div class="col-lg-4">
                          <div class="mb-3">
                            <label class="form-label">Draning System</label>
                            <input type="text" class="form-control">
                          </div>
                        </div>
                        <div class="col-lg-4">
                          <div class="mb-3">
                            <label class="form-label">Security</label>
                            <input type="text" class="form-control">
                          </div>
                        </div>
    
                        <div class="col-lg-4">
                            <div class="mb-3">
                              <label class="form-label">Boundry</label>
                              <input type="text" class="form-control">
                            </div>
                          </div>
      
    
    
    
    
                        
                        </div>



                        
                        

                        





                        <div class="row">
                            <div class="col-lg-4">
                              <div class="mb-3">
                                <label class="form-label">Bulding or Structure</label>
                                <input type="text" class="form-control" min="0 ">
                              </div>
                            </div>
                            <div class="col-lg-4">
                              <div class="mb-3">
                                <label class="form-label">Equiptment & machinery</label>
                                <input type="text" class="form-control" min="0">
                              </div>
                            </div>
        
                            <div class="col-lg-4">
                                <div class="mb-3">
                                  <label class="form-label">Land use history</label>
                                  <input type="text" class="form-control">
                                </div>
                              </div>
          
        
        
        
        
                            
                            </div>










                            <div class="row">
                                <div class="col-lg-4">
                                  <div class="mb-3">
                                    <label class="form-label">potential Income</label>
                                    <input type="number" class="form-control" min="0">
                                  </div>
                                </div>
                                <div class="col-lg-4">
                                  <div class="mb-3">
                                    <label class="form-label">Overlooking</label>
                                    <input type="text" class="form-control">

                                  </div>
                                </div>
            
                                <div class="col-lg-4">
                                    <div class="mb-3">
                                      <label class="form-label">Transation Type</label>
                                      <input type="text" class="form-control">
                                    </div>
                                  </div>
              
            
            
            
            
                                
                                </div>
                            
        





                    
                  
                </div>





                


              </div>



              <div class="card mb-4">
                <div class="card-body">
                  <h3 class="h6 mb-4">Owner information</h3>

                        <div class="row">
                            <div class="col-lg-3">
                              <div class="mb-3">
                                <label class="form-label">Name:</label>
                                <input type="text" class="form-control">
                              </div>
                            </div>
                            <div class="col-lg-3">
                              <div class="mb-3">
                                <label class="form-label">Phone number:</label>
                                <input type="number" class="form-control">
                              </div>
                            </div>
        
                            <div class="col-lg-3">
                                <div class="mb-3">
                                  <label class="form-label">Email:</label>
                                  <input type="email" class="form-control">
                                </div>
                              </div>

                              <div class="col-lg-3">
                                <div class="mb-3">
                                  <label class="form-label">Agent Name:</label>
                                  <input type="text" class="form-control">
                                </div>
                              </div> 
                            </div>
                            
        





                    
                  
                </div>





                


              </div>




              
            </div>




















            
            <!-- Right side -->
            <div class="col-lg-4">
              <!-- Status -->
              <div class="card mb-4">
                <div class="card-body">
                  <h3 class="h6">Status</h3>
                  <select class="form-select">
                    <option value="draft" selected="">Draft</option>
                    <option value="active">Active</option>
                    <option value="active">Inactive</option>
                  </select>
                </div>
              </div>
              <!-- Avatar -->
              <div class="card mb-4">
                <div class="card-body">
                  <h3 class="h6">Front Image</h3>
                  <input class="form-control" type="file">
                </div>


                <div class="card-body">
                    <h3 class="h6">Image 1</h3>
                    <input class="form-control" type="file">
                  </div>


                  <div class="card-body">
                    <h3 class="h6">Image 2</h3>
                    <input class="form-control" type="file">
                  </div>

                  <div class="card-body">
                    <h3 class="h6">Image 3</h3>
                    <input class="form-control" type="file">
                  </div>

                  <div class="card-body">
                    <h3 class="h6">Image 4</h3>
                    <input class="form-control" type="file">
                  </div>
              </div>

              <div class="card mb-4">
                <div class="card-body">
                  <h3 class="h6">video</h3>
                  <input class="form-control" type="file">
                </div>
              </div>
              <!-- Notes -->
              <div class="card mb-4">
                <div class="card-body">
                  <h3 class="h6">Notes</h3>
                  <textarea class="form-control" rows="3"></textarea>
                </div>
              </div>
              <!-- Notification settings -->
              <div class="card mb-4">
                <div class="card-body">
                  <h3 class="h6">Notification Settings</h3>
                  <ul class="list-group list-group-flush mx-n2">
                    <li class="list-group-item px-0 d-flex justify-content-between align-items-start">
                      <div class="ms-2 me-auto">
                        <h6 class="mb-0">News and updates</h6>
                        <small>News about product and feature updates.</small>
                      </div>
                      <div class="form-check form-switch">
                        <input class="form-check-input" type="checkbox" role="switch">
                      </div>
                    </li>
                    <li class="list-group-item px-0 d-flex justify-content-between align-items-start">
                      <div class="ms-2 me-auto">
                        <h6 class="mb-0">Tips and tutorials</h6>
                        <small>Tips on getting more out of the platform.</small>
                      </div>
                      <div class="form-check form-switch">
                        <input class="form-check-input" type="checkbox" role="switch" checked="">
                      </div>
                    </li>
                    <li class="list-group-item px-0 d-flex justify-content-between align-items-start">
                      <div class="ms-2 me-auto">
                        <h6 class="mb-0">User Research</h6>
                        <small>Get involved in our beta testing program.</small>
                      </div>
                      <div class="form-check form-switch">
                        <input class="form-check-input" type="checkbox" role="switch">
                      </div>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
        
          </div>
</body>
</html>
