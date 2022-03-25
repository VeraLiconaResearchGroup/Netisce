<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.34 (Build 251) (http://www.copasi.org) at 2022-02-09T15:48:40Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="34" versionDevel="251" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_40" name="phi_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_40">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (X^2)^(v_X/2)/((k_X^2)^(v_X/2)+(X^2)^(v_X/2))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="X" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_263" name="k_X" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_262" name="v_X" order="2" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="psi_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_41">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        1-phi_1(X,k_X,v_X)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_265" name="X" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_250" name="k_X" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_261" name="v_X" order="2" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_0" name="NoName" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mol" type="deterministic" avogadroConstant="6.0221407599999999e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Model_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2022-02-03T18:24:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="cell_0" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_0">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_1" name="cell_1" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_2" name="cell_2" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_2">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_3" name="cell_3" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_3">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="en_{0}" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_0">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{en}],Reference=Value>*(phi_1(&lt;CN=Root,Model=NoName,Vector=Values[{EWG_{n(0\, j)}}^{tot}],Reference=Value>*psi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[CN_{0}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CNen}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CNen}],Reference=Value>),&lt;CN=Root,Model=NoName,Vector=Values[kappa_{WGen}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{WGen}],Reference=Value>)-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[en_{0}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="en_{1}" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{en}],Reference=Value>*(phi_1(&lt;CN=Root,Model=NoName,Vector=Values[{EWG_{n(1\, j)}}^{tot}],Reference=Value>*psi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[CN_{1}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CNen}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CNen}],Reference=Value>),&lt;CN=Root,Model=NoName,Vector=Values[kappa_{WGen}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{WGen}],Reference=Value>)-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[en_{1}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="en_{2}" simulationType="ode" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_2">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{en}],Reference=Value>*(phi_1(&lt;CN=Root,Model=NoName,Vector=Values[{EWG_{n(2\, j)}}^{tot}],Reference=Value>*psi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[CN_{2}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CNen}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CNen}],Reference=Value>),&lt;CN=Root,Model=NoName,Vector=Values[kappa_{WGen}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{WGen}],Reference=Value>)-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[en_{2}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="en_{3}" simulationType="ode" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_3">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{en}],Reference=Value>*(phi_1(&lt;CN=Root,Model=NoName,Vector=Values[{EWG_{n(3\, j)}}^{tot}],Reference=Value>*psi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[CN_{3}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CNen}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CNen}],Reference=Value>),&lt;CN=Root,Model=NoName,Vector=Values[kappa_{WGen}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{WGen}],Reference=Value>)-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[en_{3}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="EN_{0}" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_4">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{EN}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[en_{0}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EN_{0}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="EN_{1}" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_5">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{EN}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[en_{1}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EN_{1}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="EN_{2}" simulationType="ode" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_6">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{EN}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[en_{2}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EN_{2}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="EN_{3}" simulationType="ode" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_7">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{EN}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[en_{3}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EN_{3}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="wg_{0}" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_8">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{wg}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Values[beta_wg],Reference=Value>*phi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[CID_{0}],Reference=Concentration>*psi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[CN_{0}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CNwg}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CNwg}],Reference=Value>),&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CIDwg}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CIDwg}],Reference=Value>)+&lt;CN=Root,Model=NoName,Vector=Values[alpha_{wg}],Reference=Value>*phi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[IWG_{0}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{WGwg}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{WGwg}],Reference=Value>))/(1+&lt;CN=Root,Model=NoName,Vector=Values[beta_wg],Reference=Value>*phi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[CID_{0}],Reference=Concentration>*psi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[CN_{0}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CNwg}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CNwg}],Reference=Value>),&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CIDwg}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CIDwg}],Reference=Value>)+&lt;CN=Root,Model=NoName,Vector=Values[alpha_{wg}],Reference=Value>*phi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[IWG_{0}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{WGwg}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{WGwg}],Reference=Value>))-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{wg}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[wg_{0}],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="wg_{1}" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_9">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{wg}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Values[beta_wg],Reference=Value>*phi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[CID_{1}],Reference=Concentration>*psi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[CN_{1}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CNwg}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CNwg}],Reference=Value>),&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CIDwg}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CIDwg}],Reference=Value>)+&lt;CN=Root,Model=NoName,Vector=Values[alpha_{wg}],Reference=Value>*phi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[IWG_{1}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{WGwg}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{WGwg}],Reference=Value>))/(1+&lt;CN=Root,Model=NoName,Vector=Values[beta_wg],Reference=Value>*phi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[CID_{1}],Reference=Concentration>*psi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[CN_{1}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CNwg}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CNwg}],Reference=Value>),&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CIDwg}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CIDwg}],Reference=Value>)+&lt;CN=Root,Model=NoName,Vector=Values[alpha_{wg}],Reference=Value>*phi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[IWG_{1}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{WGwg}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{WGwg}],Reference=Value>))-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{wg}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[wg_{1}],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="wg_{2}" simulationType="ode" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_10">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{wg}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Values[beta_wg],Reference=Value>*phi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[CID_{2}],Reference=Concentration>*psi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[CN_{2}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CNwg}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CNwg}],Reference=Value>),&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CIDwg}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CIDwg}],Reference=Value>)+&lt;CN=Root,Model=NoName,Vector=Values[alpha_{wg}],Reference=Value>*phi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[IWG_{2}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{WGwg}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{WGwg}],Reference=Value>))/(1+&lt;CN=Root,Model=NoName,Vector=Values[beta_wg],Reference=Value>*phi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[CID_{2}],Reference=Concentration>*psi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[CN_{2}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CNwg}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CNwg}],Reference=Value>),&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CIDwg}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CIDwg}],Reference=Value>)+&lt;CN=Root,Model=NoName,Vector=Values[alpha_{wg}],Reference=Value>*phi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[IWG_{2}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{WGwg}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{WGwg}],Reference=Value>))-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{wg}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[wg_{2}],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="wg_{3}" simulationType="ode" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_11">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{wg}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Values[beta_wg],Reference=Value>*phi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[CID_{3}],Reference=Concentration>*psi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[CN_{3}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CNwg}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CNwg}],Reference=Value>),&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CIDwg}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CIDwg}],Reference=Value>)+&lt;CN=Root,Model=NoName,Vector=Values[alpha_{wg}],Reference=Value>*phi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[IWG_{3}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{WGwg}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{WGwg}],Reference=Value>))/(1+&lt;CN=Root,Model=NoName,Vector=Values[beta_wg],Reference=Value>*phi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[CID_{3}],Reference=Concentration>*psi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[CN_{3}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CNwg}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CNwg}],Reference=Value>),&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CIDwg}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CIDwg}],Reference=Value>)+&lt;CN=Root,Model=NoName,Vector=Values[alpha_{wg}],Reference=Value>*phi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[IWG_{3}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{WGwg}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{WGwg}],Reference=Value>))-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{wg}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[wg_{3}],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="IWG_{0}" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_12">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{IWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[wg_{0}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[IWG_{0}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Values[r_{EndoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[{EWG_{0}}^{tot}],Reference=Value>-&lt;CN=Root,Model=NoName,Vector=Values[r_{ExoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[IWG_{0}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="IWG_{1}" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_13">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{IWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[wg_{1}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[IWG_{1}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Values[r_{EndoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[{EWG_{1}}^{tot}],Reference=Value>-&lt;CN=Root,Model=NoName,Vector=Values[r_{ExoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[IWG_{1}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="IWG_{2}" simulationType="ode" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_14">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{IWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[wg_{2}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[IWG_{2}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Values[r_{EndoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[{EWG_{2}}^{tot}],Reference=Value>-&lt;CN=Root,Model=NoName,Vector=Values[r_{ExoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[IWG_{2}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="IWG_{3}" simulationType="ode" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_15">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{IWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[wg_{3}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[IWG_{3}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Values[r_{EndoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[{EWG_{3}}^{tot}],Reference=Value>-&lt;CN=Root,Model=NoName,Vector=Values[r_{ExoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[IWG_{3}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_16" name="EWG_{0, 0}" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_16">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{ExoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[IWG_{0}],Reference=Concentration>/6+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{EndoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 0}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{MxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 3}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 0}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 5}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 1}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 0}],Reference=Concentration>)+-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{EWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 0}],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="EWG_{0, 1}" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_17">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{ExoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[IWG_{0}],Reference=Concentration>/6+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{EndoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 1}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{MxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 4}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 1}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 0}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 2}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 1}],Reference=Concentration>)+-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{EWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 1}],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_18" name="EWG_{0, 2}" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_18">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{ExoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[IWG_{0}],Reference=Concentration>/6+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{EndoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 2}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{MxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 5}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 2}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 1}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 3}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 2}],Reference=Concentration>)+-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{EWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 2}],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="EWG_{0, 3}" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_19">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{ExoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[IWG_{0}],Reference=Concentration>/6+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{EndoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 3}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{MxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 0}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 3}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 2}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 4}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 3}],Reference=Concentration>)+-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{EWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 3}],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_20" name="EWG_{0, 4}" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_20">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{ExoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[IWG_{0}],Reference=Concentration>/6+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{EndoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 4}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{MxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 1}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 4}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 3}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 5}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 4}],Reference=Concentration>)+-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{EWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 4}],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_21" name="EWG_{0, 5}" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_21">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{ExoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[IWG_{0}],Reference=Concentration>/6+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{EndoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 5}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{MxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 2}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 5}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 4}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 0}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 5}],Reference=Concentration>)+-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{EWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 5}],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_22" name="EWG_{1, 0}" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_22">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{ExoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[IWG_{1}],Reference=Concentration>/6+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{EndoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 0}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{MxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 3}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 0}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 5}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 1}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 0}],Reference=Concentration>)+-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{EWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 0}],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_23" name="EWG_{1, 1}" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_23">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{ExoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[IWG_{1}],Reference=Concentration>/6+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{EndoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 1}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{MxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 4}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 1}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 0}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 2}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 1}],Reference=Concentration>)+-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{EWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 1}],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_24" name="EWG_{1, 2}" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_24">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{ExoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[IWG_{1}],Reference=Concentration>/6+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{EndoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 2}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{MxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 5}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 2}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 1}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 3}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 2}],Reference=Concentration>)+-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{EWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 2}],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_25" name="EWG_{1, 3}" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_25">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{ExoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[IWG_{1}],Reference=Concentration>/6+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{EndoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 3}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{MxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 0}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 3}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 2}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 4}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 3}],Reference=Concentration>)+-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{EWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 3}],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_26" name="EWG_{1, 4}" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_26">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{ExoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[IWG_{1}],Reference=Concentration>/6+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{EndoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 4}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{MxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 1}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 4}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 3}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 5}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 4}],Reference=Concentration>)+-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{EWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 4}],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_27" name="EWG_{1, 5}" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_27">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{ExoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[IWG_{1}],Reference=Concentration>/6+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{EndoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 5}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{MxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 2}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 5}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 4}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 0}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 5}],Reference=Concentration>)+-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{EWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 5}],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_28" name="EWG_{2, 0}" simulationType="ode" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_28">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{ExoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[IWG_{2}],Reference=Concentration>/6+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{EndoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 0}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{MxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 3}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 0}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 5}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 1}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 0}],Reference=Concentration>)+-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{EWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 0}],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_29" name="EWG_{2, 1}" simulationType="ode" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_29">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{ExoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[IWG_{2}],Reference=Concentration>/6+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{EndoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 1}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{MxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 4}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 1}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 0}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 2}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 1}],Reference=Concentration>)+-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{EWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 1}],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_30" name="EWG_{2, 2}" simulationType="ode" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_30">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{ExoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[IWG_{2}],Reference=Concentration>/6+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{EndoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 2}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{MxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 5}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 2}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 1}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 3}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 2}],Reference=Concentration>)+-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{EWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 2}],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_31" name="EWG_{2, 3}" simulationType="ode" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_31">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{ExoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[IWG_{2}],Reference=Concentration>/6+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{EndoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 3}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{MxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 0}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 3}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 2}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 4}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 3}],Reference=Concentration>)+-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{EWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 3}],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_32" name="EWG_{2, 4}" simulationType="ode" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_32">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{ExoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[IWG_{2}],Reference=Concentration>/6+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{EndoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 4}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{MxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 1}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 4}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 3}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 5}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 4}],Reference=Concentration>)+-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{EWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 4}],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_33" name="EWG_{2, 5}" simulationType="ode" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_33">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{ExoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[IWG_{2}],Reference=Concentration>/6+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{EndoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 5}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{MxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 2}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 5}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 4}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 0}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 5}],Reference=Concentration>)+-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{EWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 5}],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_34" name="EWG_{3, 0}" simulationType="ode" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_34">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{ExoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[IWG_{3}],Reference=Concentration>/6+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{EndoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 0}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{MxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 3}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 0}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 5}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 1}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 0}],Reference=Concentration>)+-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{EWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 0}],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_35" name="EWG_{3, 1}" simulationType="ode" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_35">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{ExoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[IWG_{3}],Reference=Concentration>/6+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{EndoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 1}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{MxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 4}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 1}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 0}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 2}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 1}],Reference=Concentration>)+-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{EWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 1}],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_36" name="EWG_{3, 2}" simulationType="ode" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_36">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{ExoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[IWG_{3}],Reference=Concentration>/6+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{EndoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 2}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{MxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 5}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 2}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 1}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 3}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 2}],Reference=Concentration>)+-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{EWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 2}],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_37" name="EWG_{3, 3}" simulationType="ode" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_37">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{ExoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[IWG_{3}],Reference=Concentration>/6+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{EndoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 3}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{MxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 0}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 3}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 2}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 4}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 3}],Reference=Concentration>)+-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{EWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 3}],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_38" name="EWG_{3, 4}" simulationType="ode" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_38">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{ExoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[IWG_{3}],Reference=Concentration>/6+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{EndoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 4}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{MxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 1}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 4}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 3}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 5}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 4}],Reference=Concentration>)+-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{EWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 4}],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_39" name="EWG_{3, 5}" simulationType="ode" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_39">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{ExoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[IWG_{3}],Reference=Concentration>/6+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{EndoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 5}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{MxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 2}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 5}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 4}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 0}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 5}],Reference=Concentration>)+-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{EWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 5}],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_40" name="ptc_{0}" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_40">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{ptc}],Reference=Value>*(phi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[CID_{0}],Reference=Concentration>*psi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[CN_{0}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CNptc}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CNptc}],Reference=Value>),&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CIDptc}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CIDptc}],Reference=Value>)-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[ptc_{0}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_41" name="ptc_{1}" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_41">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{ptc}],Reference=Value>*(phi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[CID_{1}],Reference=Concentration>*psi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[CN_{1}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CNptc}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CNptc}],Reference=Value>),&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CIDptc}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CIDptc}],Reference=Value>)-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[ptc_{1}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_42" name="ptc_{2}" simulationType="ode" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_42">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{ptc}],Reference=Value>*(phi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[CID_{2}],Reference=Concentration>*psi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[CN_{2}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CNptc}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CNptc}],Reference=Value>),&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CIDptc}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CIDptc}],Reference=Value>)-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[ptc_{2}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_43" name="ptc_{3}" simulationType="ode" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_43">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{ptc}],Reference=Value>*(phi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[CID_{3}],Reference=Concentration>*psi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[CN_{3}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CNptc}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CNptc}],Reference=Value>),&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CIDptc}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CIDptc}],Reference=Value>)-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[ptc_{3}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_44" name="PTC_{0, 0}" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_44">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[ptc_{0}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 0}],Reference=Concentration>)+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 3}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 0}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferPTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 5}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 1}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 0}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_45" name="PTC_{0, 1}" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_45">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[ptc_{0}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 1}],Reference=Concentration>)+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 4}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 1}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferPTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 0}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 2}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 1}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_46" name="PTC_{0, 2}" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_46">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[ptc_{0}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 2}],Reference=Concentration>)+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 5}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 2}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferPTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 1}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 3}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 2}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_47" name="PTC_{0, 3}" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_47">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[ptc_{0}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 3}],Reference=Concentration>)+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 0}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 3}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferPTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 2}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 4}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 3}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_48" name="PTC_{0, 4}" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_48">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[ptc_{0}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 4}],Reference=Concentration>)+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 1}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 4}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferPTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 3}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 5}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 4}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_49" name="PTC_{0, 5}" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_49">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[ptc_{0}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 5}],Reference=Concentration>)+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 2}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 5}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferPTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 4}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 0}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 5}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_50" name="PTC_{1, 0}" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_50">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[ptc_{1}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 0}],Reference=Concentration>)+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 3}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 0}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferPTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 5}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 1}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 0}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_51" name="PTC_{1, 1}" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_51">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[ptc_{1}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 1}],Reference=Concentration>)+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 4}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 1}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferPTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 0}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 2}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 1}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_52" name="PTC_{1, 2}" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_52">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[ptc_{1}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 2}],Reference=Concentration>)+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 5}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 2}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferPTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 1}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 3}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 2}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_53" name="PTC_{1, 3}" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_53">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[ptc_{1}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 3}],Reference=Concentration>)+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 0}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 3}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferPTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 2}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 4}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 3}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_54" name="PTC_{1, 4}" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_54">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[ptc_{1}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 4}],Reference=Concentration>)+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 1}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 4}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferPTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 3}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 5}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 4}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_55" name="PTC_{1, 5}" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_55">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[ptc_{1}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 5}],Reference=Concentration>)+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 2}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 5}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferPTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 4}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 0}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 5}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_56" name="PTC_{2, 0}" simulationType="ode" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_56">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[ptc_{2}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 0}],Reference=Concentration>)+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 3}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 0}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferPTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 5}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 1}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 0}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_57" name="PTC_{2, 1}" simulationType="ode" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_57">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[ptc_{2}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 1}],Reference=Concentration>)+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 4}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 1}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferPTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 0}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 2}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 1}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_58" name="PTC_{2, 2}" simulationType="ode" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_58">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[ptc_{2}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 2}],Reference=Concentration>)+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 5}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 2}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferPTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 1}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 3}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 2}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_59" name="PTC_{2, 3}" simulationType="ode" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_59">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[ptc_{2}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 3}],Reference=Concentration>)+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 0}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 3}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferPTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 2}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 4}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 3}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_60" name="PTC_{2, 4}" simulationType="ode" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_60">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[ptc_{2}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 4}],Reference=Concentration>)+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 1}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 4}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferPTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 3}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 5}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 4}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_61" name="PTC_{2, 5}" simulationType="ode" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_61">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[ptc_{2}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 5}],Reference=Concentration>)+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 2}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 5}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferPTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 4}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 0}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 5}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_62" name="PTC_{3, 0}" simulationType="ode" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_62">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[ptc_{3}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 0}],Reference=Concentration>)+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 3}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 0}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferPTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 5}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 1}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 0}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_63" name="PTC_{3, 1}" simulationType="ode" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_63">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[ptc_{3}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 1}],Reference=Concentration>)+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 4}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 1}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferPTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 0}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 2}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 1}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_64" name="PTC_{3, 2}" simulationType="ode" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_64">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[ptc_{3}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 2}],Reference=Concentration>)+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 5}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 2}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferPTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 1}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 3}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 2}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_65" name="PTC_{3, 3}" simulationType="ode" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_65">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[ptc_{3}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 3}],Reference=Concentration>)+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 0}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 3}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferPTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 2}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 4}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 3}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_66" name="PTC_{3, 4}" simulationType="ode" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_66">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[ptc_{3}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 4}],Reference=Concentration>)+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 1}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 4}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferPTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 3}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 5}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 4}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_67" name="PTC_{3, 5}" simulationType="ode" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_67">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[ptc_{3}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 5}],Reference=Concentration>)+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 2}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 5}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferPTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 4}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 0}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 5}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_68" name="cid_{0}" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_68">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{cid}],Reference=Value>*(phi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[B_{0}],Reference=Concentration>*psi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EN_{0}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{ENcid}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{ENcid}],Reference=Value>),&lt;CN=Root,Model=NoName,Vector=Values[kappa_{Bcid}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{Bcid}],Reference=Value>)-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[cid_{0}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_69" name="cid_{1}" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_69">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{cid}],Reference=Value>*(phi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[B_{1}],Reference=Concentration>*psi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EN_{1}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{ENcid}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{ENcid}],Reference=Value>),&lt;CN=Root,Model=NoName,Vector=Values[kappa_{Bcid}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{Bcid}],Reference=Value>)-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[cid_{1}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_70" name="cid_{2}" simulationType="ode" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_70">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{cid}],Reference=Value>*(phi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[B_{2}],Reference=Concentration>*psi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EN_{2}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{ENcid}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{ENcid}],Reference=Value>),&lt;CN=Root,Model=NoName,Vector=Values[kappa_{Bcid}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{Bcid}],Reference=Value>)-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[cid_{2}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_71" name="cid_{3}" simulationType="ode" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_71">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{cid}],Reference=Value>*(phi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[B_{3}],Reference=Concentration>*psi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EN_{3}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{ENcid}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{ENcid}],Reference=Value>),&lt;CN=Root,Model=NoName,Vector=Values[kappa_{Bcid}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{Bcid}],Reference=Value>)-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[cid_{3}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_72" name="CID_{0}" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_72">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{CID}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[cid_{0}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[CID_{0}],Reference=Concentration>)-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[C_{CID}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[CID_{0}],Reference=Concentration>*phi_1(&lt;CN=Root,Model=NoName,Vector=Values[{PTC_{0}}^{tot}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{PTCCID}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{PTCCID}],Reference=Value>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_73" name="CID_{1}" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_73">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{CID}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[cid_{1}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[CID_{1}],Reference=Concentration>)-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[C_{CID}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[CID_{1}],Reference=Concentration>*phi_1(&lt;CN=Root,Model=NoName,Vector=Values[{PTC_{1}}^{tot}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{PTCCID}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{PTCCID}],Reference=Value>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_74" name="CID_{2}" simulationType="ode" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_74">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{CID}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[cid_{2}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[CID_{2}],Reference=Concentration>)-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[C_{CID}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[CID_{2}],Reference=Concentration>*phi_1(&lt;CN=Root,Model=NoName,Vector=Values[{PTC_{2}}^{tot}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{PTCCID}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{PTCCID}],Reference=Value>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_75" name="CID_{3}" simulationType="ode" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_75">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{CID}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[cid_{3}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[CID_{3}],Reference=Concentration>)-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[C_{CID}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[CID_{3}],Reference=Concentration>*phi_1(&lt;CN=Root,Model=NoName,Vector=Values[{PTC_{3}}^{tot}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{PTCCID}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{PTCCID}],Reference=Value>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_76" name="CN_{0}" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_76">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[C_{CID}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[CID_{0}],Reference=Concentration>*phi_1(&lt;CN=Root,Model=NoName,Vector=Values[{PTC_{0}}^{tot}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{PTCCID}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{PTCCID}],Reference=Value>)-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[CN_{0}],Reference=Concentration>/&lt;CN=Root,Model=NoName,Vector=Values[H_{CN}],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_77" name="CN_{1}" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_77">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[C_{CID}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[CID_{1}],Reference=Concentration>*phi_1(&lt;CN=Root,Model=NoName,Vector=Values[{PTC_{1}}^{tot}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{PTCCID}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{PTCCID}],Reference=Value>)-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[CN_{1}],Reference=Concentration>/&lt;CN=Root,Model=NoName,Vector=Values[H_{CN}],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_78" name="CN_{2}" simulationType="ode" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_78">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[C_{CID}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[CID_{2}],Reference=Concentration>*phi_1(&lt;CN=Root,Model=NoName,Vector=Values[{PTC_{2}}^{tot}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{PTCCID}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{PTCCID}],Reference=Value>)-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[CN_{2}],Reference=Concentration>/&lt;CN=Root,Model=NoName,Vector=Values[H_{CN}],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_79" name="CN_{3}" simulationType="ode" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_79">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[C_{CID}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[CID_{3}],Reference=Concentration>*phi_1(&lt;CN=Root,Model=NoName,Vector=Values[{PTC_{3}}^{tot}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{PTCCID}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{PTCCID}],Reference=Value>)-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[CN_{3}],Reference=Concentration>/&lt;CN=Root,Model=NoName,Vector=Values[H_{CN}],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_80" name="hh_{0}" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_80">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{hh}],Reference=Value>*(phi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EN_{0}],Reference=Concentration>*psi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[CN_{0}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CNhh}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CNhh}],Reference=Value>),&lt;CN=Root,Model=NoName,Vector=Values[kappa_{ENhh}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{ENhh}],Reference=Value>)-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[hh_{0}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_81" name="hh_{1}" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_81">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{hh}],Reference=Value>*(phi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EN_{1}],Reference=Concentration>*psi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[CN_{1}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CNhh}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CNhh}],Reference=Value>),&lt;CN=Root,Model=NoName,Vector=Values[kappa_{ENhh}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{ENhh}],Reference=Value>)-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[hh_{1}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_82" name="hh_{2}" simulationType="ode" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_82">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{hh}],Reference=Value>*(phi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EN_{2}],Reference=Concentration>*psi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[CN_{2}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CNhh}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CNhh}],Reference=Value>),&lt;CN=Root,Model=NoName,Vector=Values[kappa_{ENhh}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{ENhh}],Reference=Value>)-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[hh_{2}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_83" name="hh_{3}" simulationType="ode" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_83">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{hh}],Reference=Value>*(phi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EN_{3}],Reference=Concentration>*psi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[CN_{3}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CNhh}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CNhh}],Reference=Value>),&lt;CN=Root,Model=NoName,Vector=Values[kappa_{ENhh}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{ENhh}],Reference=Value>)-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[hh_{3}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_84" name="HH_{0, 0}" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_84">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{HH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[hh_{0}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 0}],Reference=Concentration>)-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[PTCright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 3}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 0}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferHH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 5}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 1}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 0}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_85" name="HH_{0, 1}" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_85">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{HH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[hh_{0}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 1}],Reference=Concentration>)-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[PTCright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 4}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 1}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferHH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 0}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 2}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 1}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_86" name="HH_{0, 2}" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_86">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{HH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[hh_{0}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 2}],Reference=Concentration>)-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[PTCright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 5}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 2}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferHH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 1}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 3}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 2}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_87" name="HH_{0, 3}" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_87">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{HH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[hh_{0}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 3}],Reference=Concentration>)-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[PTCright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 0}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 3}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferHH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 2}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 4}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 3}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_88" name="HH_{0, 4}" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_88">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{HH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[hh_{0}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 4}],Reference=Concentration>)-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[PTCright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 1}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 4}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferHH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 3}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 5}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 4}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_89" name="HH_{0, 5}" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_89">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{HH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[hh_{0}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 5}],Reference=Concentration>)-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[PTCright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 2}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 5}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferHH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 4}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 0}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 5}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_90" name="HH_{1, 0}" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_90">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{HH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[hh_{1}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 0}],Reference=Concentration>)-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[PTCright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 3}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 0}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferHH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 5}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 1}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 0}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_91" name="HH_{1, 1}" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_91">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{HH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[hh_{1}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 1}],Reference=Concentration>)-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[PTCright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 4}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 1}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferHH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 0}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 2}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 1}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_92" name="HH_{1, 2}" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_92">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{HH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[hh_{1}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 2}],Reference=Concentration>)-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[PTCright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 5}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 2}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferHH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 1}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 3}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 2}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_93" name="HH_{1, 3}" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_93">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{HH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[hh_{1}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 3}],Reference=Concentration>)-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[PTCright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 0}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 3}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferHH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 2}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 4}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 3}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_94" name="HH_{1, 4}" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_94">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{HH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[hh_{1}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 4}],Reference=Concentration>)-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[PTCright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 1}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 4}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferHH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 3}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 5}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 4}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_95" name="HH_{1, 5}" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_95">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{HH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[hh_{1}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 5}],Reference=Concentration>)-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[PTCright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 2}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 5}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferHH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 4}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 0}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 5}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_96" name="HH_{2, 0}" simulationType="ode" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_96">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{HH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[hh_{2}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 0}],Reference=Concentration>)-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[PTCright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 3}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 0}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferHH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 5}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 1}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 0}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_97" name="HH_{2, 1}" simulationType="ode" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_97">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{HH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[hh_{2}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 1}],Reference=Concentration>)-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[PTCright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 4}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 1}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferHH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 0}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 2}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 1}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_98" name="HH_{2, 2}" simulationType="ode" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_98">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{HH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[hh_{2}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 2}],Reference=Concentration>)-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[PTCright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 5}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 2}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferHH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 1}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 3}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 2}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_99" name="HH_{2, 3}" simulationType="ode" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_99">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{HH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[hh_{2}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 3}],Reference=Concentration>)-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[PTCright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 0}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 3}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferHH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 2}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 4}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 3}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_100" name="HH_{2, 4}" simulationType="ode" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_100">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{HH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[hh_{2}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 4}],Reference=Concentration>)-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[PTCright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 1}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 4}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferHH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 3}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 5}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 4}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_101" name="HH_{2, 5}" simulationType="ode" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_101">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{HH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[hh_{2}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 5}],Reference=Concentration>)-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[PTCright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 2}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 5}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferHH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 4}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 0}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 5}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_102" name="HH_{3, 0}" simulationType="ode" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_102">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{HH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[hh_{3}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 0}],Reference=Concentration>)-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[PTCright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 3}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 0}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferHH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 5}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 1}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 0}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_103" name="HH_{3, 1}" simulationType="ode" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_103">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{HH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[hh_{3}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 1}],Reference=Concentration>)-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[PTCright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 4}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 1}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferHH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 0}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 2}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 1}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_104" name="HH_{3, 2}" simulationType="ode" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_104">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{HH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[hh_{3}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 2}],Reference=Concentration>)-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[PTCright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 5}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 2}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferHH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 1}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 3}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 2}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_105" name="HH_{3, 3}" simulationType="ode" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_105">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{HH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[hh_{3}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 3}],Reference=Concentration>)-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[PTCright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 0}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 3}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferHH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 2}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 4}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 3}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_106" name="HH_{3, 4}" simulationType="ode" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_106">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{HH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[hh_{3}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 4}],Reference=Concentration>)-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[PTCright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 1}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 4}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferHH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 3}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 5}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 4}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_107" name="HH_{3, 5}" simulationType="ode" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_107">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{HH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[hh_{3}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 5}],Reference=Concentration>)-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[PTCright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 2}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 5}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferHH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 4}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 0}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 5}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_108" name="PH_{0, 0}" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_108">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 3}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 0}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PH_{0\, 0}],Reference=Concentration>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PH}],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_109" name="PH_{0, 1}" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_109">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 4}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 1}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PH_{0\, 1}],Reference=Concentration>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PH}],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_110" name="PH_{0, 2}" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_110">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 5}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 2}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PH_{0\, 2}],Reference=Concentration>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PH}],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_111" name="PH_{0, 3}" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_111">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 0}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 3}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PH_{0\, 3}],Reference=Concentration>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PH}],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_112" name="PH_{0, 4}" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_112">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 1}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 4}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PH_{0\, 4}],Reference=Concentration>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PH}],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_113" name="PH_{0, 5}" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_113">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 2}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 5}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PH_{0\, 5}],Reference=Concentration>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PH}],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_114" name="PH_{1, 0}" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_114">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 3}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 0}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PH_{1\, 0}],Reference=Concentration>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PH}],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_115" name="PH_{1, 1}" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_115">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 4}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 1}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PH_{1\, 1}],Reference=Concentration>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PH}],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_116" name="PH_{1, 2}" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_116">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 5}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 2}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PH_{1\, 2}],Reference=Concentration>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PH}],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_117" name="PH_{1, 3}" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_117">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 0}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 3}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PH_{1\, 3}],Reference=Concentration>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PH}],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_118" name="PH_{1, 4}" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_118">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 1}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 4}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PH_{1\, 4}],Reference=Concentration>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PH}],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_119" name="PH_{1, 5}" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_119">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 2}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 5}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PH_{1\, 5}],Reference=Concentration>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PH}],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_120" name="PH_{2, 0}" simulationType="ode" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_120">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 3}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 0}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PH_{2\, 0}],Reference=Concentration>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PH}],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_121" name="PH_{2, 1}" simulationType="ode" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_121">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 4}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 1}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PH_{2\, 1}],Reference=Concentration>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PH}],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_122" name="PH_{2, 2}" simulationType="ode" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_122">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 5}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 2}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PH_{2\, 2}],Reference=Concentration>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PH}],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_123" name="PH_{2, 3}" simulationType="ode" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_123">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 0}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 3}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PH_{2\, 3}],Reference=Concentration>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PH}],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_124" name="PH_{2, 4}" simulationType="ode" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_124">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 1}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 4}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PH_{2\, 4}],Reference=Concentration>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PH}],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_125" name="PH_{2, 5}" simulationType="ode" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_125">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 2}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 5}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PH_{2\, 5}],Reference=Concentration>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PH}],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_126" name="PH_{3, 0}" simulationType="ode" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_126">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 3}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 0}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PH_{3\, 0}],Reference=Concentration>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PH}],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_127" name="PH_{3, 1}" simulationType="ode" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_127">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 4}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 1}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PH_{3\, 1}],Reference=Concentration>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PH}],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_128" name="PH_{3, 2}" simulationType="ode" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_128">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 5}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 2}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PH_{3\, 2}],Reference=Concentration>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PH}],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_129" name="PH_{3, 3}" simulationType="ode" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_129">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 0}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 3}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PH_{3\, 3}],Reference=Concentration>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PH}],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_130" name="PH_{3, 4}" simulationType="ode" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_130">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 1}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 4}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PH_{3\, 4}],Reference=Concentration>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PH}],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_131" name="PH_{3, 5}" simulationType="ode" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_131">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 2}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 5}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PH_{3\, 5}],Reference=Concentration>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PH}],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_132" name="B_{0}" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_132">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_133" name="B_{1}" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_133">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_134" name="B_{2}" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_134">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_135" name="B_{3}" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_135">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="alpha_{wg}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_0">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="beta_wg" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="C_{CID}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_2">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="r_{EndoWG}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_3">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="r_{ExoWG}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_4">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="H_{cid}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_5">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="H_{CID}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_6">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="H_{CN}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_7">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="H_{en}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_8">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="H_{EN}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_9">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="H_{EWG}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_10">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="H_{hh}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_11">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="H_{HH}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_12">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="H_{IWG}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_13">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="H_{PH}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_14">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="H_{ptc}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_15">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="H_{PTC}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_16">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="H_{wg}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_17">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="kappa_{Bcid}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_18">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="kappa_{CIDptc}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_19">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_20" name="kappa_{CIDwg}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_20">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_21" name="kappa_{CNen}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_21">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="kappa_{CNhh}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_22">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_23" name="kappa_{CNptc}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_23">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_24" name="kappa_{CNwg}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_24">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_25" name="kappa_{ENcid}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_25">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_26" name="kappa_{ENhh}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_26">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_27" name="k_{PTCHH}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_27">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_28" name="kappa_{PTCCID}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_28">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_29" name="kappa_{WGen}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_29">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_30" name="kappa_{WGwg}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_30">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_31" name="r_{LMxferHH}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_31">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_32" name="r_{LMxferPTC}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_32">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_33" name="r_{LMxferWG}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_33">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_34" name="left[HHright]_0" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_34">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_35" name="left[PTCright]_0" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_35">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_36" name="r_{MxferWG}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_36">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_37" name="nu_{Bcid}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_37">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_38" name="nu_{CIDptc}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_38">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_39" name="nu_{CIDwg}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_39">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_40" name="nu_{CNen}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_40">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_41" name="nu_{CNhh}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_41">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_42" name="nu_{CNptc}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_42">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_43" name="nu_{CNwg}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_43">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_44" name="nu_{ENcid}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_44">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_45" name="nu_{ENhh}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_45">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_46" name="nu_{PTCCID}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_46">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_47" name="nu_{WGen}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_47">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_48" name="nu_{WGwg}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_48">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_49" name="T_0" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_49">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_50" name="{EWG_{n(0, j)}}^{tot}" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_50">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 3}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 4}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 5}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 0}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 1}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 2}],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_51" name="{EWG_{0}}^{tot}" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_51">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 0}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 1}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 2}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 3}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 4}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 5}],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_52" name="{PTC_{0}}^{tot}" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_52">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 0}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 1}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 2}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 3}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 4}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 5}],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_53" name="{EWG_{n(1, j)}}^{tot}" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_53">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 3}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 4}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 5}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 0}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 1}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 2}],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_54" name="{EWG_{1}}^{tot}" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_54">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 0}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 1}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 2}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 3}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 4}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 5}],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_55" name="{PTC_{1}}^{tot}" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_55">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 0}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 1}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 2}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 3}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 4}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 5}],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_56" name="{EWG_{n(2, j)}}^{tot}" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_56">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 3}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 4}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 5}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 0}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 1}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 2}],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_57" name="{EWG_{2}}^{tot}" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_57">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 0}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 1}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 2}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 3}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 4}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 5}],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_58" name="{PTC_{2}}^{tot}" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_58">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 0}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 1}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 2}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 3}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 4}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 5}],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_59" name="{EWG_{n(3, j)}}^{tot}" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_59">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 3}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 4}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 5}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 0}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 1}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 2}],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_60" name="{EWG_{3}}^{tot}" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_60">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 0}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 1}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 2}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 3}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 4}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 5}],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_61" name="{PTC_{3}}^{tot}" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_61">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 0}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 1}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 2}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 3}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 4}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 5}],Reference=Concentration>
        </Expression>
      </ModelValue>
    </ListOfModelValues>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_0">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=NoName" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[en_{0}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[en_{1}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[en_{2}]" value="6.0221407599999999e+23" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[en_{3}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EN_{0}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EN_{1}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EN_{2}]" value="6.0221407599999999e+23" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EN_{3}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[wg_{0}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[wg_{1}]" value="6.0221407599999999e+23" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[wg_{2}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[wg_{3}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[IWG_{0}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[IWG_{1}]" value="6.0221407599999999e+23" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[IWG_{2}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[IWG_{3}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 0}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 1}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 2}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 3}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 4}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 5}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 0}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 1}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 2}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 3}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 4}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 5}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 0}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 1}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 2}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 3}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 4}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 5}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 0}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 1}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 2}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 3}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 4}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 5}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[ptc_{0}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[ptc_{1}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[ptc_{2}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[ptc_{3}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 0}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 1}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 2}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 3}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 4}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 5}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 0}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 1}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 2}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 3}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 4}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 5}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 0}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 1}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 2}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 3}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 4}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 5}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 0}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 1}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 2}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 3}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 4}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 5}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[cid_{0}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[cid_{1}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[cid_{2}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[cid_{3}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[CID_{0}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[CID_{1}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[CID_{2}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[CID_{3}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[CN_{0}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[CN_{1}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[CN_{2}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[CN_{3}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[hh_{0}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[hh_{1}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[hh_{2}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[hh_{3}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 0}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 1}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 2}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 3}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 4}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 5}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 0}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 1}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 2}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 3}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 4}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 5}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 0}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 1}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 2}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 3}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 4}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 5}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 0}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 1}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 2}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 3}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 4}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 5}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PH_{0\, 0}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PH_{0\, 1}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PH_{0\, 2}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PH_{0\, 3}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PH_{0\, 4}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PH_{0\, 5}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PH_{1\, 0}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PH_{1\, 1}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PH_{1\, 2}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PH_{1\, 3}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PH_{1\, 4}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PH_{1\, 5}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PH_{2\, 0}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PH_{2\, 1}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PH_{2\, 2}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PH_{2\, 3}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PH_{2\, 4}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PH_{2\, 5}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PH_{3\, 0}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PH_{3\, 1}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PH_{3\, 2}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PH_{3\, 3}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PH_{3\, 4}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PH_{3\, 5}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[B_{0}]" value="2.4088563040000001e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[B_{1}]" value="2.4088563040000001e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[B_{2}]" value="2.4088563040000001e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[B_{3}]" value="2.4088563040000001e+23" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[alpha_{wg}]" value="6.0053489999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[beta_wg]" value="5.204021" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[C_{CID}]" value="0.21791068999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[r_{EndoWG}]" value="0.022727015999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[r_{ExoWG}]" value="9.0256489999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[H_{cid}]" value="49.707165000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[H_{CID}]" value="64.972059999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[H_{CN}]" value="33.628746" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[H_{en}]" value="46.018706999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[H_{EN}]" value="89.086945" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[H_{EWG}]" value="83.471405000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[H_{hh}]" value="71.173310000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[H_{HH}]" value="85.202340000000007" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[H_{IWG}]" value="42.216594999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[H_{PH}]" value="69.082759999999993" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[H_{ptc}]" value="27.042265" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[H_{PTC}]" value="7.0865080000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[H_{wg}]" value="46.868214000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[kappa_{Bcid}]" value="0.060660119999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[kappa_{CIDptc}]" value="0.012318047" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[kappa_{CIDwg}]" value="0.18530468999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[kappa_{CNen}]" value="0.071796730000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[kappa_{CNhh}]" value="0.0094278890000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[kappa_{CNptc}]" value="0.39010437999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[kappa_{CNwg}]" value="0.024009527999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[kappa_{ENcid}]" value="0.16834398" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[kappa_{ENhh}]" value="0.0025787520000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[k_{PTCHH}]" value="0.00040299999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[kappa_{PTCCID}]" value="0.0011283840000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[kappa_{WGen}]" value="0.15238990999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[kappa_{WGwg}]" value="0.0033452209999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[r_{LMxferHH}]" value="0.0045493069999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[r_{LMxferPTC}]" value="0.0081650779999999992" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[r_{LMxferWG}]" value="0.0046140920000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0]" value="1252.9409000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[left\[PTCright\]_0]" value="194526.14000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[r_{MxferWG}]" value="0.001043326" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[nu_{Bcid}]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[nu_{CIDptc}]" value="8.4492930000000008" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[nu_{CIDwg}]" value="7.7842817000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[nu_{CNen}]" value="4.4584903999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[nu_{CNhh}]" value="4.5680389999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[nu_{CNptc}]" value="5.1261825999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[nu_{CNwg}]" value="9.728828" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[nu_{ENcid}]" value="3.8734335999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[nu_{ENhh}]" value="9.3890290000000007" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[nu_{PTCCID}]" value="7.4913926000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[nu_{WGen}]" value="3.3611936999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[nu_{WGwg}]" value="8.4920249999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[T_0]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[{EWG_{n(0\, j)}}^{tot}]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[{EWG_{0}}^{tot}]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[{PTC_{0}}^{tot}]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[{EWG_{n(1\, j)}}^{tot}]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[{EWG_{1}}^{tot}]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[{PTC_{1}}^{tot}]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[{EWG_{n(2\, j)}}^{tot}]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[{EWG_{2}}^{tot}]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[{PTC_{2}}^{tot}]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[{EWG_{n(3\, j)}}^{tot}]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[{EWG_{3}}^{tot}]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[{PTC_{3}}^{tot}]" value="0" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_20"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_40"/>
      <StateTemplateVariable objectReference="Metabolite_44"/>
      <StateTemplateVariable objectReference="Metabolite_45"/>
      <StateTemplateVariable objectReference="Metabolite_46"/>
      <StateTemplateVariable objectReference="Metabolite_47"/>
      <StateTemplateVariable objectReference="Metabolite_48"/>
      <StateTemplateVariable objectReference="Metabolite_49"/>
      <StateTemplateVariable objectReference="Metabolite_68"/>
      <StateTemplateVariable objectReference="Metabolite_72"/>
      <StateTemplateVariable objectReference="Metabolite_76"/>
      <StateTemplateVariable objectReference="Metabolite_80"/>
      <StateTemplateVariable objectReference="Metabolite_84"/>
      <StateTemplateVariable objectReference="Metabolite_85"/>
      <StateTemplateVariable objectReference="Metabolite_86"/>
      <StateTemplateVariable objectReference="Metabolite_87"/>
      <StateTemplateVariable objectReference="Metabolite_88"/>
      <StateTemplateVariable objectReference="Metabolite_89"/>
      <StateTemplateVariable objectReference="Metabolite_108"/>
      <StateTemplateVariable objectReference="Metabolite_109"/>
      <StateTemplateVariable objectReference="Metabolite_110"/>
      <StateTemplateVariable objectReference="Metabolite_111"/>
      <StateTemplateVariable objectReference="Metabolite_112"/>
      <StateTemplateVariable objectReference="Metabolite_113"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_22"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_24"/>
      <StateTemplateVariable objectReference="Metabolite_25"/>
      <StateTemplateVariable objectReference="Metabolite_26"/>
      <StateTemplateVariable objectReference="Metabolite_27"/>
      <StateTemplateVariable objectReference="Metabolite_41"/>
      <StateTemplateVariable objectReference="Metabolite_50"/>
      <StateTemplateVariable objectReference="Metabolite_51"/>
      <StateTemplateVariable objectReference="Metabolite_52"/>
      <StateTemplateVariable objectReference="Metabolite_53"/>
      <StateTemplateVariable objectReference="Metabolite_54"/>
      <StateTemplateVariable objectReference="Metabolite_55"/>
      <StateTemplateVariable objectReference="Metabolite_69"/>
      <StateTemplateVariable objectReference="Metabolite_73"/>
      <StateTemplateVariable objectReference="Metabolite_77"/>
      <StateTemplateVariable objectReference="Metabolite_81"/>
      <StateTemplateVariable objectReference="Metabolite_90"/>
      <StateTemplateVariable objectReference="Metabolite_91"/>
      <StateTemplateVariable objectReference="Metabolite_92"/>
      <StateTemplateVariable objectReference="Metabolite_93"/>
      <StateTemplateVariable objectReference="Metabolite_94"/>
      <StateTemplateVariable objectReference="Metabolite_95"/>
      <StateTemplateVariable objectReference="Metabolite_114"/>
      <StateTemplateVariable objectReference="Metabolite_115"/>
      <StateTemplateVariable objectReference="Metabolite_116"/>
      <StateTemplateVariable objectReference="Metabolite_117"/>
      <StateTemplateVariable objectReference="Metabolite_118"/>
      <StateTemplateVariable objectReference="Metabolite_119"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_28"/>
      <StateTemplateVariable objectReference="Metabolite_29"/>
      <StateTemplateVariable objectReference="Metabolite_30"/>
      <StateTemplateVariable objectReference="Metabolite_31"/>
      <StateTemplateVariable objectReference="Metabolite_32"/>
      <StateTemplateVariable objectReference="Metabolite_33"/>
      <StateTemplateVariable objectReference="Metabolite_42"/>
      <StateTemplateVariable objectReference="Metabolite_56"/>
      <StateTemplateVariable objectReference="Metabolite_57"/>
      <StateTemplateVariable objectReference="Metabolite_58"/>
      <StateTemplateVariable objectReference="Metabolite_59"/>
      <StateTemplateVariable objectReference="Metabolite_60"/>
      <StateTemplateVariable objectReference="Metabolite_61"/>
      <StateTemplateVariable objectReference="Metabolite_70"/>
      <StateTemplateVariable objectReference="Metabolite_74"/>
      <StateTemplateVariable objectReference="Metabolite_78"/>
      <StateTemplateVariable objectReference="Metabolite_82"/>
      <StateTemplateVariable objectReference="Metabolite_96"/>
      <StateTemplateVariable objectReference="Metabolite_97"/>
      <StateTemplateVariable objectReference="Metabolite_98"/>
      <StateTemplateVariable objectReference="Metabolite_99"/>
      <StateTemplateVariable objectReference="Metabolite_100"/>
      <StateTemplateVariable objectReference="Metabolite_101"/>
      <StateTemplateVariable objectReference="Metabolite_120"/>
      <StateTemplateVariable objectReference="Metabolite_121"/>
      <StateTemplateVariable objectReference="Metabolite_122"/>
      <StateTemplateVariable objectReference="Metabolite_123"/>
      <StateTemplateVariable objectReference="Metabolite_124"/>
      <StateTemplateVariable objectReference="Metabolite_125"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_34"/>
      <StateTemplateVariable objectReference="Metabolite_35"/>
      <StateTemplateVariable objectReference="Metabolite_36"/>
      <StateTemplateVariable objectReference="Metabolite_37"/>
      <StateTemplateVariable objectReference="Metabolite_38"/>
      <StateTemplateVariable objectReference="Metabolite_39"/>
      <StateTemplateVariable objectReference="Metabolite_43"/>
      <StateTemplateVariable objectReference="Metabolite_62"/>
      <StateTemplateVariable objectReference="Metabolite_63"/>
      <StateTemplateVariable objectReference="Metabolite_64"/>
      <StateTemplateVariable objectReference="Metabolite_65"/>
      <StateTemplateVariable objectReference="Metabolite_66"/>
      <StateTemplateVariable objectReference="Metabolite_67"/>
      <StateTemplateVariable objectReference="Metabolite_71"/>
      <StateTemplateVariable objectReference="Metabolite_75"/>
      <StateTemplateVariable objectReference="Metabolite_79"/>
      <StateTemplateVariable objectReference="Metabolite_83"/>
      <StateTemplateVariable objectReference="Metabolite_102"/>
      <StateTemplateVariable objectReference="Metabolite_103"/>
      <StateTemplateVariable objectReference="Metabolite_104"/>
      <StateTemplateVariable objectReference="Metabolite_105"/>
      <StateTemplateVariable objectReference="Metabolite_106"/>
      <StateTemplateVariable objectReference="Metabolite_107"/>
      <StateTemplateVariable objectReference="Metabolite_126"/>
      <StateTemplateVariable objectReference="Metabolite_127"/>
      <StateTemplateVariable objectReference="Metabolite_128"/>
      <StateTemplateVariable objectReference="Metabolite_129"/>
      <StateTemplateVariable objectReference="Metabolite_130"/>
      <StateTemplateVariable objectReference="Metabolite_131"/>
      <StateTemplateVariable objectReference="ModelValue_50"/>
      <StateTemplateVariable objectReference="ModelValue_51"/>
      <StateTemplateVariable objectReference="ModelValue_52"/>
      <StateTemplateVariable objectReference="ModelValue_53"/>
      <StateTemplateVariable objectReference="ModelValue_54"/>
      <StateTemplateVariable objectReference="ModelValue_55"/>
      <StateTemplateVariable objectReference="ModelValue_56"/>
      <StateTemplateVariable objectReference="ModelValue_57"/>
      <StateTemplateVariable objectReference="ModelValue_58"/>
      <StateTemplateVariable objectReference="ModelValue_59"/>
      <StateTemplateVariable objectReference="ModelValue_60"/>
      <StateTemplateVariable objectReference="ModelValue_61"/>
      <StateTemplateVariable objectReference="Metabolite_132"/>
      <StateTemplateVariable objectReference="Metabolite_133"/>
      <StateTemplateVariable objectReference="Metabolite_134"/>
      <StateTemplateVariable objectReference="Metabolite_135"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
      <StateTemplateVariable objectReference="Compartment_2"/>
      <StateTemplateVariable objectReference="Compartment_3"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
      <StateTemplateVariable objectReference="ModelValue_4"/>
      <StateTemplateVariable objectReference="ModelValue_5"/>
      <StateTemplateVariable objectReference="ModelValue_6"/>
      <StateTemplateVariable objectReference="ModelValue_7"/>
      <StateTemplateVariable objectReference="ModelValue_8"/>
      <StateTemplateVariable objectReference="ModelValue_9"/>
      <StateTemplateVariable objectReference="ModelValue_10"/>
      <StateTemplateVariable objectReference="ModelValue_11"/>
      <StateTemplateVariable objectReference="ModelValue_12"/>
      <StateTemplateVariable objectReference="ModelValue_13"/>
      <StateTemplateVariable objectReference="ModelValue_14"/>
      <StateTemplateVariable objectReference="ModelValue_15"/>
      <StateTemplateVariable objectReference="ModelValue_16"/>
      <StateTemplateVariable objectReference="ModelValue_17"/>
      <StateTemplateVariable objectReference="ModelValue_18"/>
      <StateTemplateVariable objectReference="ModelValue_19"/>
      <StateTemplateVariable objectReference="ModelValue_20"/>
      <StateTemplateVariable objectReference="ModelValue_21"/>
      <StateTemplateVariable objectReference="ModelValue_22"/>
      <StateTemplateVariable objectReference="ModelValue_23"/>
      <StateTemplateVariable objectReference="ModelValue_24"/>
      <StateTemplateVariable objectReference="ModelValue_25"/>
      <StateTemplateVariable objectReference="ModelValue_26"/>
      <StateTemplateVariable objectReference="ModelValue_27"/>
      <StateTemplateVariable objectReference="ModelValue_28"/>
      <StateTemplateVariable objectReference="ModelValue_29"/>
      <StateTemplateVariable objectReference="ModelValue_30"/>
      <StateTemplateVariable objectReference="ModelValue_31"/>
      <StateTemplateVariable objectReference="ModelValue_32"/>
      <StateTemplateVariable objectReference="ModelValue_33"/>
      <StateTemplateVariable objectReference="ModelValue_34"/>
      <StateTemplateVariable objectReference="ModelValue_35"/>
      <StateTemplateVariable objectReference="ModelValue_36"/>
      <StateTemplateVariable objectReference="ModelValue_37"/>
      <StateTemplateVariable objectReference="ModelValue_38"/>
      <StateTemplateVariable objectReference="ModelValue_39"/>
      <StateTemplateVariable objectReference="ModelValue_40"/>
      <StateTemplateVariable objectReference="ModelValue_41"/>
      <StateTemplateVariable objectReference="ModelValue_42"/>
      <StateTemplateVariable objectReference="ModelValue_43"/>
      <StateTemplateVariable objectReference="ModelValue_44"/>
      <StateTemplateVariable objectReference="ModelValue_45"/>
      <StateTemplateVariable objectReference="ModelValue_46"/>
      <StateTemplateVariable objectReference="ModelValue_47"/>
      <StateTemplateVariable objectReference="ModelValue_48"/>
      <StateTemplateVariable objectReference="ModelValue_49"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6.0221407599999999e+23 6.0221407599999999e+23 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6.0221407599999999e+23 6.0221407599999999e+23 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2.4088563040000001e+23 2.4088563040000001e+23 2.4088563040000001e+23 2.4088563040000001e+23 1 1 1 1 6.0053489999999998 5.204021 0.21791068999999999 0.022727015999999999 9.0256489999999996 49.707165000000003 64.972059999999999 33.628746 46.018706999999999 89.086945 83.471405000000004 71.173310000000001 85.202340000000007 42.216594999999998 69.082759999999993 27.042265 7.0865080000000003 46.868214000000002 0.060660119999999998 0.012318047 0.18530468999999999 0.071796730000000003 0.0094278890000000001 0.39010437999999997 0.024009527999999999 0.16834398 0.0025787520000000001 0.00040299999999999998 0.0011283840000000001 0.15238990999999999 0.0033452209999999998 0.0045493069999999998 0.0081650779999999992 0.0046140920000000002 1252.9409000000001 194526.14000000001 0.001043326 1 8.4492930000000008 7.7842817000000002 4.4584903999999996 4.5680389999999997 5.1261825999999999 9.728828 3.8734335999999998 9.3890290000000007 7.4913926000000002 3.3611936999999998 8.4920249999999999 1 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_13" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_10" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="1"/>
        <Parameter name="Use Integration" type="bool" value="1"/>
        <Parameter name="Use Back Integration" type="bool" value="0"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
        <Parameter name="Target Criterion" type="string" value="Distance and Rate"/>
      </Method>
    </Task>
    <Task key="Task_12" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_9" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="5"/>
        <Parameter name="StepSize" type="float" value="100"/>
        <Parameter name="Duration" type="float" value="500"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_11" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Report reference="Report_22" target="copasi/wt-40.txt" append="0" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="100"/>
            <Parameter name="Type" type="unsignedInteger" value="0"/>
            <Parameter name="Object" type="cn" value=""/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[B_{0}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.40000000000000002"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[B_{1}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.40000000000000002"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[B_{2}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.40000000000000002"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[B_{3}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.40000000000000002"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EN_{2}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="1"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[IWG_{1}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="1"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[wg_{1}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="1"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[en_{2}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="1"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="1"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
        <Parameter name="Continue on Error" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_10" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_8" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_9" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_7" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Subtask" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <ParameterText name="ObjectiveExpression" type="expression">
          
        </ParameterText>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
      </Problem>
      <Method name="Random Search" type="RandomSearch">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Iterations" type="unsignedInteger" value="100000"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_8" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_6" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <Parameter name="Steady-State" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <Parameter name="Time-Course" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <Parameter name="Create Parameter Sets" type="bool" value="0"/>
        <Parameter name="Use Time Sens" type="bool" value="0"/>
        <Parameter name="Time-Sens" type="cn" value=""/>
        <ParameterGroup name="Experiment Set">
        </ParameterGroup>
        <ParameterGroup name="Validation Set">
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
        </ParameterGroup>
      </Problem>
      <Method name="Evolutionary Programming" type="EvolutionaryProgram">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Generations" type="unsignedInteger" value="200"/>
        <Parameter name="Population Size" type="unsignedInteger" value="20"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
        <Parameter name="Stop after # Stalled Generations" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_7" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_5" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_13"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_6" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_4" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="ExponentNumber" type="unsignedInteger" value="3"/>
        <Parameter name="DivergenceRequested" type="bool" value="1"/>
        <Parameter name="TransientTime" type="float" value="0"/>
      </Problem>
      <Method name="Wolf Method" type="WolfMethod">
        <Parameter name="Orthonormalization Interval" type="unsignedFloat" value="1"/>
        <Parameter name="Overall time" type="unsignedFloat" value="1000"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_5" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_3" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="ILDM (LSODA,Deuflhard)" type="TimeScaleSeparation(ILDM,Deuflhard)">
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="0.0001"/>
      </Method>
    </Task>
    <Task key="Task_16" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_2" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="SubtaskType" type="unsignedInteger" value="1"/>
        <ParameterGroup name="TargetFunctions">
          <Parameter name="SingleObject" type="cn" value=""/>
          <Parameter name="ObjectListType" type="unsignedInteger" value="7"/>
        </ParameterGroup>
        <ParameterGroup name="ListOfVariables">
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="41"/>
          </ParameterGroup>
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="0"/>
          </ParameterGroup>
        </ParameterGroup>
      </Problem>
      <Method name="Sensitivities Method" type="SensitivitiesMethod">
        <Parameter name="Delta factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Delta minimum" type="unsignedFloat" value="9.9999999999999998e-13"/>
      </Method>
    </Task>
    <Task key="Task_15" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Report reference="Report_1" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_4" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
        <Parameter name="LimitCrossings" type="bool" value="0"/>
        <Parameter name="NumCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitOutTime" type="bool" value="0"/>
        <Parameter name="LimitOutCrossings" type="bool" value="0"/>
        <Parameter name="PositiveDirection" type="bool" value="1"/>
        <Parameter name="NumOutCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitUntilConvergence" type="bool" value="0"/>
        <Parameter name="ConvergenceTolerance" type="float" value="0"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="0"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_3" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_0" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_13"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
    <Task key="Task_2" name="Time-Course Sensitivities" type="timeSensitivities" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
        <ParameterGroup name="ListOfParameters">
        </ParameterGroup>
        <ParameterGroup name="ListOfTargets">
        </ParameterGroup>
      </Problem>
      <Method name="LSODA Sensitivities" type="Sensitivities(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_10" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_9" name="Time-Course" taskType="timeCourse" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time-Course],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Time-Course],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_8" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_7" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_6" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_5" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_4" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_3" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_2" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_1" name="Moieties" taskType="moieties" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_0" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_22" name="report" taskType="timeCourse" separator="&#x09;" precision="6">
      <Comment>
      </Comment>
      <Table printTitle="1">
        <Object cn="CN=Root,Model=NoName,Reference=Initial Time"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[B_{0}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[B_{1}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[B_{2}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[B_{3}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[CID_{0}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[CID_{1}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[CID_{2}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[CID_{3}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[CN_{0}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[CN_{1}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[CN_{2}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[CN_{3}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EN_{0}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EN_{1}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EN_{2}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EN_{3}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 0}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 1}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 2}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 3}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 4}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 5}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 0}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 1}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 2}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 3}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 4}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 5}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 0}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 1}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 2}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 3}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 4}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 5}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 0}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 1}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 2}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 3}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 4}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 5}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 0}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 1}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 2}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 3}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 4}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 5}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 0}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 1}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 2}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 3}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 4}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 5}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 0}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 1}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 2}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 3}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 4}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 5}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 0}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 1}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 2}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 3}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 4}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 5}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[IWG_{0}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[IWG_{1}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[IWG_{2}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[IWG_{3}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PH_{0\, 0}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PH_{0\, 1}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PH_{0\, 2}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PH_{0\, 3}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PH_{0\, 4}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PH_{0\, 5}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PH_{1\, 0}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PH_{1\, 1}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PH_{1\, 2}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PH_{1\, 3}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PH_{1\, 4}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PH_{1\, 5}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PH_{2\, 0}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PH_{2\, 1}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PH_{2\, 2}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PH_{2\, 3}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PH_{2\, 4}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PH_{2\, 5}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PH_{3\, 0}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PH_{3\, 1}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PH_{3\, 2}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PH_{3\, 3}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PH_{3\, 4}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PH_{3\, 5}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 0}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 1}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 2}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 3}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 4}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 5}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 0}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 1}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 2}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 3}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 4}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 5}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 0}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 1}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 2}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 3}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 4}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 5}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 0}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 1}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 2}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 3}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 4}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 5}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[cid_{0}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[cid_{1}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[cid_{2}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[cid_{3}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[en_{0}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[en_{1}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[en_{2}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[en_{3}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[hh_{0}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[hh_{1}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[hh_{2}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[hh_{3}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[ptc_{0}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[ptc_{1}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[ptc_{2}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[ptc_{3}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[wg_{0}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[wg_{1}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[wg_{2}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[wg_{3}],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=NoName,Reference=Time"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[en_{2}],Reference=Concentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[wg_{1}],Reference=Concentration"/>
      </Table>
    </Report>
  </ListOfReports>
  <ListOfPlots>
    <PlotSpecification name="plot" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[wg_{1}]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NoName,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[wg_{1}],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[en_{2}]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NoName,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[en_{2}],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="vondassowmodelparam2.xml">
    <SBMLMap SBMLid="B_cell_0" COPASIkey="Metabolite_132"/>
    <SBMLMap SBMLid="B_cell_1" COPASIkey="Metabolite_133"/>
    <SBMLMap SBMLid="B_cell_2" COPASIkey="Metabolite_134"/>
    <SBMLMap SBMLid="B_cell_3" COPASIkey="Metabolite_135"/>
    <SBMLMap SBMLid="CID_cell_0" COPASIkey="Metabolite_72"/>
    <SBMLMap SBMLid="CID_cell_1" COPASIkey="Metabolite_73"/>
    <SBMLMap SBMLid="CID_cell_2" COPASIkey="Metabolite_74"/>
    <SBMLMap SBMLid="CID_cell_3" COPASIkey="Metabolite_75"/>
    <SBMLMap SBMLid="CN_cell_0" COPASIkey="Metabolite_76"/>
    <SBMLMap SBMLid="CN_cell_1" COPASIkey="Metabolite_77"/>
    <SBMLMap SBMLid="CN_cell_2" COPASIkey="Metabolite_78"/>
    <SBMLMap SBMLid="CN_cell_3" COPASIkey="Metabolite_79"/>
    <SBMLMap SBMLid="C_CID" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="EN_cell_0" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="EN_cell_1" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="EN_cell_2" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="EN_cell_3" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="EWG_cell_0_side_0" COPASIkey="Metabolite_16"/>
    <SBMLMap SBMLid="EWG_cell_0_side_1" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="EWG_cell_0_side_2" COPASIkey="Metabolite_18"/>
    <SBMLMap SBMLid="EWG_cell_0_side_3" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="EWG_cell_0_side_4" COPASIkey="Metabolite_20"/>
    <SBMLMap SBMLid="EWG_cell_0_side_5" COPASIkey="Metabolite_21"/>
    <SBMLMap SBMLid="EWG_cell_1_side_0" COPASIkey="Metabolite_22"/>
    <SBMLMap SBMLid="EWG_cell_1_side_1" COPASIkey="Metabolite_23"/>
    <SBMLMap SBMLid="EWG_cell_1_side_2" COPASIkey="Metabolite_24"/>
    <SBMLMap SBMLid="EWG_cell_1_side_3" COPASIkey="Metabolite_25"/>
    <SBMLMap SBMLid="EWG_cell_1_side_4" COPASIkey="Metabolite_26"/>
    <SBMLMap SBMLid="EWG_cell_1_side_5" COPASIkey="Metabolite_27"/>
    <SBMLMap SBMLid="EWG_cell_2_side_0" COPASIkey="Metabolite_28"/>
    <SBMLMap SBMLid="EWG_cell_2_side_1" COPASIkey="Metabolite_29"/>
    <SBMLMap SBMLid="EWG_cell_2_side_2" COPASIkey="Metabolite_30"/>
    <SBMLMap SBMLid="EWG_cell_2_side_3" COPASIkey="Metabolite_31"/>
    <SBMLMap SBMLid="EWG_cell_2_side_4" COPASIkey="Metabolite_32"/>
    <SBMLMap SBMLid="EWG_cell_2_side_5" COPASIkey="Metabolite_33"/>
    <SBMLMap SBMLid="EWG_cell_3_side_0" COPASIkey="Metabolite_34"/>
    <SBMLMap SBMLid="EWG_cell_3_side_1" COPASIkey="Metabolite_35"/>
    <SBMLMap SBMLid="EWG_cell_3_side_2" COPASIkey="Metabolite_36"/>
    <SBMLMap SBMLid="EWG_cell_3_side_3" COPASIkey="Metabolite_37"/>
    <SBMLMap SBMLid="EWG_cell_3_side_4" COPASIkey="Metabolite_38"/>
    <SBMLMap SBMLid="EWG_cell_3_side_5" COPASIkey="Metabolite_39"/>
    <SBMLMap SBMLid="EWG_tot_cell_0" COPASIkey="ModelValue_51"/>
    <SBMLMap SBMLid="EWG_tot_cell_1" COPASIkey="ModelValue_54"/>
    <SBMLMap SBMLid="EWG_tot_cell_2" COPASIkey="ModelValue_57"/>
    <SBMLMap SBMLid="EWG_tot_cell_3" COPASIkey="ModelValue_60"/>
    <SBMLMap SBMLid="EWG_tot_pres_cell_0" COPASIkey="ModelValue_50"/>
    <SBMLMap SBMLid="EWG_tot_pres_cell_1" COPASIkey="ModelValue_53"/>
    <SBMLMap SBMLid="EWG_tot_pres_cell_2" COPASIkey="ModelValue_56"/>
    <SBMLMap SBMLid="EWG_tot_pres_cell_3" COPASIkey="ModelValue_59"/>
    <SBMLMap SBMLid="Endo_WG" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="Exo_WG" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="HH_cell_0_side_0" COPASIkey="Metabolite_84"/>
    <SBMLMap SBMLid="HH_cell_0_side_1" COPASIkey="Metabolite_85"/>
    <SBMLMap SBMLid="HH_cell_0_side_2" COPASIkey="Metabolite_86"/>
    <SBMLMap SBMLid="HH_cell_0_side_3" COPASIkey="Metabolite_87"/>
    <SBMLMap SBMLid="HH_cell_0_side_4" COPASIkey="Metabolite_88"/>
    <SBMLMap SBMLid="HH_cell_0_side_5" COPASIkey="Metabolite_89"/>
    <SBMLMap SBMLid="HH_cell_1_side_0" COPASIkey="Metabolite_90"/>
    <SBMLMap SBMLid="HH_cell_1_side_1" COPASIkey="Metabolite_91"/>
    <SBMLMap SBMLid="HH_cell_1_side_2" COPASIkey="Metabolite_92"/>
    <SBMLMap SBMLid="HH_cell_1_side_3" COPASIkey="Metabolite_93"/>
    <SBMLMap SBMLid="HH_cell_1_side_4" COPASIkey="Metabolite_94"/>
    <SBMLMap SBMLid="HH_cell_1_side_5" COPASIkey="Metabolite_95"/>
    <SBMLMap SBMLid="HH_cell_2_side_0" COPASIkey="Metabolite_96"/>
    <SBMLMap SBMLid="HH_cell_2_side_1" COPASIkey="Metabolite_97"/>
    <SBMLMap SBMLid="HH_cell_2_side_2" COPASIkey="Metabolite_98"/>
    <SBMLMap SBMLid="HH_cell_2_side_3" COPASIkey="Metabolite_99"/>
    <SBMLMap SBMLid="HH_cell_2_side_4" COPASIkey="Metabolite_100"/>
    <SBMLMap SBMLid="HH_cell_2_side_5" COPASIkey="Metabolite_101"/>
    <SBMLMap SBMLid="HH_cell_3_side_0" COPASIkey="Metabolite_102"/>
    <SBMLMap SBMLid="HH_cell_3_side_1" COPASIkey="Metabolite_103"/>
    <SBMLMap SBMLid="HH_cell_3_side_2" COPASIkey="Metabolite_104"/>
    <SBMLMap SBMLid="HH_cell_3_side_3" COPASIkey="Metabolite_105"/>
    <SBMLMap SBMLid="HH_cell_3_side_4" COPASIkey="Metabolite_106"/>
    <SBMLMap SBMLid="HH_cell_3_side_5" COPASIkey="Metabolite_107"/>
    <SBMLMap SBMLid="H_CID" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="H_CN" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="H_EN" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="H_EWG" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="H_HH" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="H_IWG" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="H_PH" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="H_PTC" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="H_cid" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="H_en" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="H_hh" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="H_ptc" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="H_wg" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="IWG_cell_0" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="IWG_cell_1" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="IWG_cell_2" COPASIkey="Metabolite_14"/>
    <SBMLMap SBMLid="IWG_cell_3" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="K_Bcid" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="K_CIDptc" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="K_CIDwg" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="K_CNen" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="K_CNhh" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="K_CNptc" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="K_CNwg" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="K_ENcid" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="K_ENhh" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="K_PTCCID" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="K_PTC_HH" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="K_WGen" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="K_WGwg" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="LMxfer_HH" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="LMxfer_PTC" COPASIkey="ModelValue_32"/>
    <SBMLMap SBMLid="LMxfer_WG" COPASIkey="ModelValue_33"/>
    <SBMLMap SBMLid="Mxfer_WG" COPASIkey="ModelValue_36"/>
    <SBMLMap SBMLid="PH_cell_0_side_0" COPASIkey="Metabolite_108"/>
    <SBMLMap SBMLid="PH_cell_0_side_1" COPASIkey="Metabolite_109"/>
    <SBMLMap SBMLid="PH_cell_0_side_2" COPASIkey="Metabolite_110"/>
    <SBMLMap SBMLid="PH_cell_0_side_3" COPASIkey="Metabolite_111"/>
    <SBMLMap SBMLid="PH_cell_0_side_4" COPASIkey="Metabolite_112"/>
    <SBMLMap SBMLid="PH_cell_0_side_5" COPASIkey="Metabolite_113"/>
    <SBMLMap SBMLid="PH_cell_1_side_0" COPASIkey="Metabolite_114"/>
    <SBMLMap SBMLid="PH_cell_1_side_1" COPASIkey="Metabolite_115"/>
    <SBMLMap SBMLid="PH_cell_1_side_2" COPASIkey="Metabolite_116"/>
    <SBMLMap SBMLid="PH_cell_1_side_3" COPASIkey="Metabolite_117"/>
    <SBMLMap SBMLid="PH_cell_1_side_4" COPASIkey="Metabolite_118"/>
    <SBMLMap SBMLid="PH_cell_1_side_5" COPASIkey="Metabolite_119"/>
    <SBMLMap SBMLid="PH_cell_2_side_0" COPASIkey="Metabolite_120"/>
    <SBMLMap SBMLid="PH_cell_2_side_1" COPASIkey="Metabolite_121"/>
    <SBMLMap SBMLid="PH_cell_2_side_2" COPASIkey="Metabolite_122"/>
    <SBMLMap SBMLid="PH_cell_2_side_3" COPASIkey="Metabolite_123"/>
    <SBMLMap SBMLid="PH_cell_2_side_4" COPASIkey="Metabolite_124"/>
    <SBMLMap SBMLid="PH_cell_2_side_5" COPASIkey="Metabolite_125"/>
    <SBMLMap SBMLid="PH_cell_3_side_0" COPASIkey="Metabolite_126"/>
    <SBMLMap SBMLid="PH_cell_3_side_1" COPASIkey="Metabolite_127"/>
    <SBMLMap SBMLid="PH_cell_3_side_2" COPASIkey="Metabolite_128"/>
    <SBMLMap SBMLid="PH_cell_3_side_3" COPASIkey="Metabolite_129"/>
    <SBMLMap SBMLid="PH_cell_3_side_4" COPASIkey="Metabolite_130"/>
    <SBMLMap SBMLid="PH_cell_3_side_5" COPASIkey="Metabolite_131"/>
    <SBMLMap SBMLid="PTC_cell_0_side_0" COPASIkey="Metabolite_44"/>
    <SBMLMap SBMLid="PTC_cell_0_side_1" COPASIkey="Metabolite_45"/>
    <SBMLMap SBMLid="PTC_cell_0_side_2" COPASIkey="Metabolite_46"/>
    <SBMLMap SBMLid="PTC_cell_0_side_3" COPASIkey="Metabolite_47"/>
    <SBMLMap SBMLid="PTC_cell_0_side_4" COPASIkey="Metabolite_48"/>
    <SBMLMap SBMLid="PTC_cell_0_side_5" COPASIkey="Metabolite_49"/>
    <SBMLMap SBMLid="PTC_cell_1_side_0" COPASIkey="Metabolite_50"/>
    <SBMLMap SBMLid="PTC_cell_1_side_1" COPASIkey="Metabolite_51"/>
    <SBMLMap SBMLid="PTC_cell_1_side_2" COPASIkey="Metabolite_52"/>
    <SBMLMap SBMLid="PTC_cell_1_side_3" COPASIkey="Metabolite_53"/>
    <SBMLMap SBMLid="PTC_cell_1_side_4" COPASIkey="Metabolite_54"/>
    <SBMLMap SBMLid="PTC_cell_1_side_5" COPASIkey="Metabolite_55"/>
    <SBMLMap SBMLid="PTC_cell_2_side_0" COPASIkey="Metabolite_56"/>
    <SBMLMap SBMLid="PTC_cell_2_side_1" COPASIkey="Metabolite_57"/>
    <SBMLMap SBMLid="PTC_cell_2_side_2" COPASIkey="Metabolite_58"/>
    <SBMLMap SBMLid="PTC_cell_2_side_3" COPASIkey="Metabolite_59"/>
    <SBMLMap SBMLid="PTC_cell_2_side_4" COPASIkey="Metabolite_60"/>
    <SBMLMap SBMLid="PTC_cell_2_side_5" COPASIkey="Metabolite_61"/>
    <SBMLMap SBMLid="PTC_cell_3_side_0" COPASIkey="Metabolite_62"/>
    <SBMLMap SBMLid="PTC_cell_3_side_1" COPASIkey="Metabolite_63"/>
    <SBMLMap SBMLid="PTC_cell_3_side_2" COPASIkey="Metabolite_64"/>
    <SBMLMap SBMLid="PTC_cell_3_side_3" COPASIkey="Metabolite_65"/>
    <SBMLMap SBMLid="PTC_cell_3_side_4" COPASIkey="Metabolite_66"/>
    <SBMLMap SBMLid="PTC_cell_3_side_5" COPASIkey="Metabolite_67"/>
    <SBMLMap SBMLid="PTC_tot_cell_0" COPASIkey="ModelValue_52"/>
    <SBMLMap SBMLid="PTC_tot_cell_1" COPASIkey="ModelValue_55"/>
    <SBMLMap SBMLid="PTC_tot_cell_2" COPASIkey="ModelValue_58"/>
    <SBMLMap SBMLid="PTC_tot_cell_3" COPASIkey="ModelValue_61"/>
    <SBMLMap SBMLid="T_0" COPASIkey="ModelValue_49"/>
    <SBMLMap SBMLid="alpha_wg" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="beta_wg" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="cell_0" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="cell_1" COPASIkey="Compartment_1"/>
    <SBMLMap SBMLid="cell_2" COPASIkey="Compartment_2"/>
    <SBMLMap SBMLid="cell_3" COPASIkey="Compartment_3"/>
    <SBMLMap SBMLid="cid_cell_0" COPASIkey="Metabolite_68"/>
    <SBMLMap SBMLid="cid_cell_1" COPASIkey="Metabolite_69"/>
    <SBMLMap SBMLid="cid_cell_2" COPASIkey="Metabolite_70"/>
    <SBMLMap SBMLid="cid_cell_3" COPASIkey="Metabolite_71"/>
    <SBMLMap SBMLid="en_cell_0" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="en_cell_1" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="en_cell_2" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="en_cell_3" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="hh_cell_0" COPASIkey="Metabolite_80"/>
    <SBMLMap SBMLid="hh_cell_1" COPASIkey="Metabolite_81"/>
    <SBMLMap SBMLid="hh_cell_2" COPASIkey="Metabolite_82"/>
    <SBMLMap SBMLid="hh_cell_3" COPASIkey="Metabolite_83"/>
    <SBMLMap SBMLid="maxHH" COPASIkey="ModelValue_34"/>
    <SBMLMap SBMLid="maxPTC" COPASIkey="ModelValue_35"/>
    <SBMLMap SBMLid="nu_Bcid" COPASIkey="ModelValue_37"/>
    <SBMLMap SBMLid="nu_CIDptc" COPASIkey="ModelValue_38"/>
    <SBMLMap SBMLid="nu_CIDwg" COPASIkey="ModelValue_39"/>
    <SBMLMap SBMLid="nu_CNen" COPASIkey="ModelValue_40"/>
    <SBMLMap SBMLid="nu_CNhh" COPASIkey="ModelValue_41"/>
    <SBMLMap SBMLid="nu_CNptc" COPASIkey="ModelValue_42"/>
    <SBMLMap SBMLid="nu_CNwg" COPASIkey="ModelValue_43"/>
    <SBMLMap SBMLid="nu_ENcid" COPASIkey="ModelValue_44"/>
    <SBMLMap SBMLid="nu_ENhh" COPASIkey="ModelValue_45"/>
    <SBMLMap SBMLid="nu_PTCCID" COPASIkey="ModelValue_46"/>
    <SBMLMap SBMLid="nu_WGen" COPASIkey="ModelValue_47"/>
    <SBMLMap SBMLid="nu_WGwg" COPASIkey="ModelValue_48"/>
    <SBMLMap SBMLid="phi" COPASIkey="Function_40"/>
    <SBMLMap SBMLid="psi" COPASIkey="Function_41"/>
    <SBMLMap SBMLid="ptc_cell_0" COPASIkey="Metabolite_40"/>
    <SBMLMap SBMLid="ptc_cell_1" COPASIkey="Metabolite_41"/>
    <SBMLMap SBMLid="ptc_cell_2" COPASIkey="Metabolite_42"/>
    <SBMLMap SBMLid="ptc_cell_3" COPASIkey="Metabolite_43"/>
    <SBMLMap SBMLid="wg_cell_0" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="wg_cell_1" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="wg_cell_2" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="wg_cell_3" COPASIkey="Metabolite_11"/>
  </SBMLReference>
  <ListOfUnitDefinitions>
    <UnitDefinition key="Unit_1" name="meter" symbol="m">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_0">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        m
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_5" name="second" symbol="s">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_4">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        s
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_13" name="Avogadro" symbol="Avogadro">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_12">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_17" name="item" symbol="#">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_16">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        #
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_35" name="liter" symbol="l">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_34">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        0.001*m^3
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_41" name="mole" symbol="mol">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_40">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro*#
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
