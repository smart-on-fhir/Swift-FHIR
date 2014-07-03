//
//  ImagingStudy.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-03.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  A set of images produced in single study (one or more series of references images).
 *
 *  Scope and Usage This resource summarizes a series of images or other instances generated as part of an imaging
 *  study, and provides references to where the images are available using WADO-RS. This resource is used to make
 *  information concerning images etc. that are available in other clinical contexts such as diagnostic reports,
 *  Care Plans, etc. Also, see the use case description below.
 *  
 *  This resources has been specifically designed with use in DICOM contexts in mind. The content is closely based
 *  on the definitions of the equivalent DICOM constructs, and informed by usage patterns already established
 *  through DICOM implementation practices, including XDS-I. It is not, however, necessary to use DICOM
 *  infrastructure in order to use this resource.
 */
class ImagingStudy: FHIRResource
{
	override var resourceName: String {
		get { return "ImagingStudy" }
	}

	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?

	/*! Contained, inline Resources */
	var contained: FHIRResource[]?

	/*! When the study was performed */
	var dateTime: NSDate?

	/*! Who the images are of */
	var subject: ResourceReference

	/*! Formal identifier for the study (0020,000D) */
	var uid: String

	/*! Accession Number (0008,0050) */
	var accessionNo: Identifier?

	/*! Other identifiers for the study (0020,0010) */
	var identifier: Identifier[]?

	/*! Order(s) that caused this study to be performed */
	var order: ResourceReference[]?

	/*! All series.modality if actual acquisition modalities */
	var modality: String[]?

	/*! Referring physician (0008,0090) */
	var referrer: ResourceReference?

	/*! ONLINE | OFFLINE | NEARLINE | UNAVAILABLE (0008,0056) */
	var availability: String?

	/*! Retrieve URI (0008,1190) */
	var url: NSURL?

	/*! Number of Study Related Series (0020,1206) */
	var numberOfSeries: Int

	/*! Number of Study Related Instances (0020,1208) */
	var numberOfInstances: Int

	/*! Diagnoses etc with request (0040,1002) */
	var clinicalInformation: String?

	/*! Type of procedure performed (0008,1032) */
	var procedure: Coding[]?

	/*! Who interpreted images (0008,1060) */
	var interpreter: ResourceReference?

	/*! Institution-generated description (0008,1030) */
	var description: String?

	/*! Each study has one or more series of instances */
	var series: ImagingStudySeries[]?

	init(subject: ResourceReference, uid: String, numberOfSeries: Int, numberOfInstances: Int) {
		self.subject = subject
		self.uid = uid
		self.numberOfSeries = numberOfSeries
		self.numberOfInstances = numberOfInstances
	}
}


/*!
 *  Each study has one or more series of instances.
 *
 *  Each study has one or more series of image instances.
 */
class ImagingStudySeries: FHIRElement
{
	/*! Number of this series in overall sequence (0020,0011) */
	var number: Int?

	/*! The modality of the instances in the series (0008,0060) */
	var modality: String

	/*! Formal identifier for this series (0020,000E) */
	var uid: String

	/*! A description of the series (0008,103E) */
	var description: String?

	/*! Number of Series Related Instances (0020,1209) */
	var numberOfInstances: Int

	/*! ONLINE | OFFLINE | NEARLINE | UNAVAILABLE (0008,0056) */
	var availability: String?

	/*! Retrieve URI (0008,1115 > 0008,1190) */
	var url: NSURL?

	/*! Body part examined (Map from 0018,0015) */
	var bodySite: Coding?

	/*! When the series started */
	var dateTime: NSDate?

	/*! A single instance taken from a patient (image or other) */
	var instance: ImagingStudySeriesInstance[]

	init(modality: String, uid: String, numberOfInstances: Int, instance: ImagingStudySeriesInstance[]) {
		self.modality = modality
		self.uid = uid
		self.numberOfInstances = numberOfInstances
		self.instance = instance
	}
}


/*!
 *  A single instance taken from a patient (image or other).
 *
 *  A single image taken from a patient.
 */
class ImagingStudySeriesInstance: FHIRElement
{
	/*! The number of this instance in the series (0020,0013) */
	var number: Int?

	/*! Formal identifier for this instance (0008,0018) */
	var uid: String

	/*! DICOM class type (0008,0016) */
	var sopclass: String

	/*! Type of instance (image etc) (0004,1430) */
	var type: String?

	/*! Description (0070,0080 | 0040,A043 > 0008,0104 | 0042,0010 | 0008,0008) */
	var title: String?

	/*! WADO-RS service where instance is available  (0008,1199 > 0008,1190) */
	var url: NSURL?

	/*! A FHIR resource with content for this instance */
	var attachment: ResourceReference?

	init(uid: String, sopclass: String) {
		self.uid = uid
		self.sopclass = sopclass
	}
}
