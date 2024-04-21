<div id="reservationPopup">
                        <div class="popup-content">
                            <span class="close" id="closePopup">&times;</span>
                            <h2>Reservation Form</h2>
                            <form id="FormValidation" action="ReservationServlet" method="post">
                                <div class="row">
                                    <div class="col-12 col-md-6 my-2">
                                        <input type="text" name="firstName" placeholder="First Name" required>
                                    </div>

                                    <div class="col-12 col-md-6 my-2">
                                        <input type="text" name="lastName" placeholder="Last Name" required>
                                    </div>

                                    <div class="col-12 col-md-6 my-2">
                                        <input type="tel" name="mobileNumber" placeholder="Mobile Number" required>
                                    </div>

                                    <div class="col-12 col-md-6 my-2">
                                        <input type="email" name="email" placeholder="E-mail" required>
                                    </div>

                                    <div class="col-12 col-md-6 my-2">
                                        <input type="time" name="time" required>
                                    </div>
                                    
                                    <div class="col-12 col-md-6 my-2">
                                        <input type="date" name="date" required>
                                    </div>

                                    <div class="col-12 col-md-6 my-2">
                                        <input type="number" name="selectPersons" placeholder="Select Persons" required>
                                    </div>
                                    
                                    <div class="col-12 col-md-6 my-2">		
                              			<select id="table" name="table" required>
                                			<option value="table1">Table 1</option>
                                			<option value="table2">Table 2</option>
                                			<option value="table3">Table 3</option>
                                			<option value="table4">Table 4</option>
                                			<option value="table5">Table 5</option>   
                            			</select>
                            		</div>

                                    <div class="col-12 col-md-6 my-2">
                                        <textarea name="message" placeholder="Message" style="width: 100%;"></textarea>
                                    </div>

                                    <div class="col-12 col-md-4 my-2 mx-auto">
                                        <button class="but" type="submit">Submit Reservation</button>
                                    </div>

                                </div>
                               
                            </form>
                        </div>
