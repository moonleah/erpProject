<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
				<div class="container d-flex justify-content-center"> 
					    <div id="deletModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
					        <div class="modal-dialog modal-dialog-centered" role="document">
					            <div class="modal-content border-0">
					                <div class="modal-body p-0">
					                    <div class="card border-0 p-sm-3 p-2 justify-content-center">
					                        <div class="card-header pb-0 bg-white border-0 ">
					                            <div class="row">
					                                <div class="col ml-auto"><button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span> </button></div>
					                            </div>
					                            <p class="font-weight-bold mb-2"> Are you sure you wanna delete this ?</p>
					                            <p class="text-muted "> This change will reflect in your portal right now.</p>
					                        </div>
					                        <div class="card-body px-sm-4 mb-2 pt-1 pb-0">
					                            <div class="row justify-content-end no-gutters">
					                                <div class="col-auto"><button type="button" class="btn btn-light text-muted" data-dismiss="modal">Cancel</button></div>
					                                <div class="col-auto"><button id="delete" type="button" class="btn btn-danger px-4" data-dismiss="modal">Delete</button></div>
					                            </div>
					                        </div>
					                    </div>
					                </div>
					            </div>
					        </div>
					    </div>
					</div>
