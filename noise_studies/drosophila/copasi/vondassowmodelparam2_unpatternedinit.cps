<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.34 (Build 251) (http://www.copasi.org) at 2022-02-15T05:40:26Z -->
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
  <Model key="Model_1" name="NoName" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mol" type="deterministic" avogadroConstant="6.0221407599999999e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Model_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2022-02-03T18:57:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <ListOfCompartments>
      <Compartment key="Compartment_4" name="cell_0" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_4">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_5" name="cell_1" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_5">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_6" name="cell_2" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_6">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_7" name="cell_3" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_7">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_136" name="B_{0}" simulationType="reactions" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_136">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_137" name="B_{1}" simulationType="reactions" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_137">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_138" name="B_{2}" simulationType="reactions" compartment="Compartment_6" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_138">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_139" name="B_{3}" simulationType="reactions" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_139">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_140" name="cid_{0}" simulationType="ode" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_140">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{cid}],Reference=Value>*(phi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[B_{0}],Reference=Concentration>*psi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EN_{0}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{ENcid}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{ENcid}],Reference=Value>),&lt;CN=Root,Model=NoName,Vector=Values[kappa_{Bcid}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{Bcid}],Reference=Value>)-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[cid_{0}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_141" name="CID_{0}" simulationType="ode" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{CID}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[cid_{0}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[CID_{0}],Reference=Concentration>)-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[C_{CID}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[CID_{0}],Reference=Concentration>*phi_1(&lt;CN=Root,Model=NoName,Vector=Values[{PTC_{0}}^{tot}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{PTCCID}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{PTCCID}],Reference=Value>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_142" name="cid_{1}" simulationType="ode" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{cid}],Reference=Value>*(phi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[B_{1}],Reference=Concentration>*psi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EN_{1}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{ENcid}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{ENcid}],Reference=Value>),&lt;CN=Root,Model=NoName,Vector=Values[kappa_{Bcid}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{Bcid}],Reference=Value>)-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[cid_{1}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_143" name="CID_{1}" simulationType="fixed" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_144" name="cid_{2}" simulationType="ode" compartment="Compartment_6" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_144">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{cid}],Reference=Value>*(phi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[B_{2}],Reference=Concentration>*psi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EN_{2}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{ENcid}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{ENcid}],Reference=Value>),&lt;CN=Root,Model=NoName,Vector=Values[kappa_{Bcid}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{Bcid}],Reference=Value>)-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[cid_{2}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_145" name="CID_{2}" simulationType="fixed" compartment="Compartment_6" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_146" name="cid_{3}" simulationType="ode" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_146">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{cid}],Reference=Value>*(phi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[B_{3}],Reference=Concentration>*psi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EN_{3}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{ENcid}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{ENcid}],Reference=Value>),&lt;CN=Root,Model=NoName,Vector=Values[kappa_{Bcid}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{Bcid}],Reference=Value>)-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[cid_{3}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_147" name="CID_{3}" simulationType="ode" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_147">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{CID}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[cid_{3}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[CID_{3}],Reference=Concentration>)-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[C_{CID}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[CID_{3}],Reference=Concentration>*phi_1(&lt;CN=Root,Model=NoName,Vector=Values[{PTC_{3}}^{tot}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{PTCCID}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{PTCCID}],Reference=Value>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_148" name="CN_{0}" simulationType="fixed" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_149" name="CN_{1}" simulationType="fixed" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_150" name="CN_{2}" simulationType="fixed" compartment="Compartment_6" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_151" name="CN_{3}" simulationType="fixed" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_152" name="en_{0}" simulationType="ode" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_152">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{en}],Reference=Value>*(phi_1(&lt;CN=Root,Model=NoName,Vector=Values[{EWG_{n(0\, j)}}^{tot}],Reference=Value>*psi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[CN_{0}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CNen}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CNen}],Reference=Value>),&lt;CN=Root,Model=NoName,Vector=Values[kappa_{WGen}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{WGen}],Reference=Value>)-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[en_{0}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_153" name="EN_{0}" simulationType="ode" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_153">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{EN}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[en_{0}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EN_{0}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_154" name="en_{1}" simulationType="ode" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_154">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{en}],Reference=Value>*(phi_1(&lt;CN=Root,Model=NoName,Vector=Values[{EWG_{n(1\, j)}}^{tot}],Reference=Value>*psi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[CN_{1}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CNen}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CNen}],Reference=Value>),&lt;CN=Root,Model=NoName,Vector=Values[kappa_{WGen}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{WGen}],Reference=Value>)-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[en_{1}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_155" name="EN_{1}" simulationType="ode" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_155">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{EN}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[en_{1}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EN_{1}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_156" name="en_{2}" simulationType="ode" compartment="Compartment_6" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_156">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{en}],Reference=Value>*(phi_1(&lt;CN=Root,Model=NoName,Vector=Values[{EWG_{n(2\, j)}}^{tot}],Reference=Value>*psi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[CN_{2}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CNen}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CNen}],Reference=Value>),&lt;CN=Root,Model=NoName,Vector=Values[kappa_{WGen}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{WGen}],Reference=Value>)-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[en_{2}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_157" name="EN_{2}" simulationType="ode" compartment="Compartment_6" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_157">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{EN}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[en_{2}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EN_{2}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_158" name="en_{3}" simulationType="ode" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_158">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{en}],Reference=Value>*(phi_1(&lt;CN=Root,Model=NoName,Vector=Values[{EWG_{n(3\, j)}}^{tot}],Reference=Value>*psi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[CN_{3}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CNen}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CNen}],Reference=Value>),&lt;CN=Root,Model=NoName,Vector=Values[kappa_{WGen}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{WGen}],Reference=Value>)-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[en_{3}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_159" name="EN_{3}" simulationType="ode" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_159">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{EN}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[en_{3}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EN_{3}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_160" name="EWG_{0, 0}" simulationType="fixed" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_161" name="EWG_{0, 1}" simulationType="ode" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_161">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{ExoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[IWG_{0}],Reference=Concentration>/6+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{EndoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 1}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{MxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 4}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 1}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 0}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 2}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 1}],Reference=Concentration>)+-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{EWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 1}],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_162" name="EWG_{0, 2}" simulationType="ode" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{ExoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[IWG_{0}],Reference=Concentration>/6+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{EndoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 2}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{MxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 5}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 2}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 1}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 3}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 2}],Reference=Concentration>)+-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{EWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 2}],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_163" name="EWG_{0, 3}" simulationType="ode" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_163">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{ExoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[IWG_{0}],Reference=Concentration>/6+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{EndoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 3}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{MxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 0}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 3}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 2}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 4}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 3}],Reference=Concentration>)+-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{EWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 3}],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_164" name="EWG_{0, 4}" simulationType="ode" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{ExoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[IWG_{0}],Reference=Concentration>/6+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{EndoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 4}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{MxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 1}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 4}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 3}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 5}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 4}],Reference=Concentration>)+-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{EWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 4}],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_165" name="EWG_{0, 5}" simulationType="ode" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_165">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{ExoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[IWG_{0}],Reference=Concentration>/6+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{EndoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 5}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{MxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 2}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 5}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 4}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 0}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 5}],Reference=Concentration>)+-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{EWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 5}],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_166" name="EWG_{1, 0}" simulationType="fixed" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_167" name="EWG_{1, 1}" simulationType="ode" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_167">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{ExoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[IWG_{1}],Reference=Concentration>/6+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{EndoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 1}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{MxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 4}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 1}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 0}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 2}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 1}],Reference=Concentration>)+-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{EWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 1}],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_168" name="EWG_{1, 2}" simulationType="fixed" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_169" name="EWG_{1, 3}" simulationType="ode" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_169">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{ExoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[IWG_{1}],Reference=Concentration>/6+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{EndoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 3}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{MxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 0}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 3}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 2}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 4}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 3}],Reference=Concentration>)+-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{EWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 3}],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_170" name="EWG_{1, 4}" simulationType="fixed" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_171" name="EWG_{1, 5}" simulationType="ode" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{ExoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[IWG_{1}],Reference=Concentration>/6+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{EndoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 5}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{MxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 2}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 5}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 4}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 0}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 5}],Reference=Concentration>)+-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{EWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 5}],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_172" name="EWG_{2, 0}" simulationType="fixed" compartment="Compartment_6" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_173" name="EWG_{2, 1}" simulationType="ode" compartment="Compartment_6" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_173">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{ExoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[IWG_{2}],Reference=Concentration>/6+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{EndoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 1}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{MxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 4}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 1}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 0}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 2}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 1}],Reference=Concentration>)+-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{EWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 1}],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_174" name="EWG_{2, 2}" simulationType="fixed" compartment="Compartment_6" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_175" name="EWG_{2, 3}" simulationType="ode" compartment="Compartment_6" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_175">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{ExoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[IWG_{2}],Reference=Concentration>/6+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{EndoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 3}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{MxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 0}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 3}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 2}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 4}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 3}],Reference=Concentration>)+-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{EWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 3}],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_176" name="EWG_{2, 4}" simulationType="fixed" compartment="Compartment_6" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_177" name="EWG_{2, 5}" simulationType="ode" compartment="Compartment_6" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_177">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{ExoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[IWG_{2}],Reference=Concentration>/6+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{EndoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 5}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{MxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 2}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 5}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 4}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 0}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 5}],Reference=Concentration>)+-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{EWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 5}],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_178" name="EWG_{3, 0}" simulationType="fixed" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_179" name="EWG_{3, 1}" simulationType="ode" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_179">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{ExoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[IWG_{3}],Reference=Concentration>/6+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{EndoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 1}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{MxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 4}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 1}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 0}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 2}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 1}],Reference=Concentration>)+-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{EWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 1}],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_180" name="EWG_{3, 2}" simulationType="fixed" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_181" name="EWG_{3, 3}" simulationType="ode" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_181">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{ExoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[IWG_{3}],Reference=Concentration>/6+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{EndoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 3}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{MxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 0}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 3}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 2}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 4}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 3}],Reference=Concentration>)+-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{EWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 3}],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_182" name="EWG_{3, 4}" simulationType="fixed" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_183" name="EWG_{3, 5}" simulationType="ode" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_183">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{ExoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[IWG_{3}],Reference=Concentration>/6+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{EndoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 5}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{MxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 2}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 5}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 4}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 0}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 5}],Reference=Concentration>)+-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{EWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 5}],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_184" name="hh_{0}" simulationType="ode" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_184">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{hh}],Reference=Value>*(phi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EN_{0}],Reference=Concentration>*psi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[CN_{0}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CNhh}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CNhh}],Reference=Value>),&lt;CN=Root,Model=NoName,Vector=Values[kappa_{ENhh}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{ENhh}],Reference=Value>)-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[hh_{0}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_185" name="HH_{0, 0}" simulationType="fixed" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_186" name="HH_{0, 1}" simulationType="ode" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{HH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[hh_{0}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 1}],Reference=Concentration>)-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[PTCright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 4}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 1}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferHH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 0}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 2}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 1}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_187" name="HH_{0, 2}" simulationType="fixed" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_188" name="HH_{0, 3}" simulationType="ode" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{HH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[hh_{0}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 3}],Reference=Concentration>)-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[PTCright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 0}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 3}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferHH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 2}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 4}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 3}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_189" name="HH_{0, 4}" simulationType="fixed" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_190" name="HH_{0, 5}" simulationType="ode" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_190">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{HH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[hh_{0}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 5}],Reference=Concentration>)-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[PTCright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 2}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 5}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferHH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 4}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 0}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 5}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_191" name="hh_{1}" simulationType="ode" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_191">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{hh}],Reference=Value>*(phi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EN_{1}],Reference=Concentration>*psi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[CN_{1}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CNhh}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CNhh}],Reference=Value>),&lt;CN=Root,Model=NoName,Vector=Values[kappa_{ENhh}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{ENhh}],Reference=Value>)-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[hh_{1}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_192" name="HH_{1, 0}" simulationType="fixed" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_193" name="HH_{1, 1}" simulationType="ode" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_193">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{HH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[hh_{1}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 1}],Reference=Concentration>)-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[PTCright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 4}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 1}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferHH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 0}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 2}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 1}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_194" name="HH_{1, 2}" simulationType="fixed" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_195" name="HH_{1, 3}" simulationType="ode" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_195">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{HH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[hh_{1}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 3}],Reference=Concentration>)-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[PTCright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 0}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 3}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferHH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 2}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 4}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 3}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_196" name="HH_{1, 4}" simulationType="fixed" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_197" name="HH_{1, 5}" simulationType="ode" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_197">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{HH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[hh_{1}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 5}],Reference=Concentration>)-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[PTCright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 2}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 5}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferHH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 4}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 0}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 5}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_198" name="hh_{2}" simulationType="ode" compartment="Compartment_6" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_198">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{hh}],Reference=Value>*(phi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EN_{2}],Reference=Concentration>*psi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[CN_{2}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CNhh}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CNhh}],Reference=Value>),&lt;CN=Root,Model=NoName,Vector=Values[kappa_{ENhh}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{ENhh}],Reference=Value>)-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[hh_{2}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_199" name="HH_{2, 0}" simulationType="fixed" compartment="Compartment_6" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_200" name="HH_{2, 1}" simulationType="ode" compartment="Compartment_6" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_200">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{HH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[hh_{2}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 1}],Reference=Concentration>)-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[PTCright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 4}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 1}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferHH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 0}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 2}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 1}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_201" name="HH_{2, 2}" simulationType="fixed" compartment="Compartment_6" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_202" name="HH_{2, 3}" simulationType="ode" compartment="Compartment_6" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_202">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{HH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[hh_{2}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 3}],Reference=Concentration>)-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[PTCright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 0}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 3}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferHH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 2}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 4}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 3}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_203" name="HH_{2, 4}" simulationType="fixed" compartment="Compartment_6" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_204" name="HH_{2, 5}" simulationType="ode" compartment="Compartment_6" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_204">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{HH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[hh_{2}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 5}],Reference=Concentration>)-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[PTCright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 2}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 5}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferHH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 4}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 0}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 5}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_205" name="hh_{3}" simulationType="ode" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_205">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{hh}],Reference=Value>*(phi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EN_{3}],Reference=Concentration>*psi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[CN_{3}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CNhh}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CNhh}],Reference=Value>),&lt;CN=Root,Model=NoName,Vector=Values[kappa_{ENhh}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{ENhh}],Reference=Value>)-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[hh_{3}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_206" name="HH_{3, 0}" simulationType="fixed" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_207" name="HH_{3, 1}" simulationType="ode" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_207">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{HH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[hh_{3}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 1}],Reference=Concentration>)-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[PTCright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 4}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 1}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferHH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 0}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 2}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 1}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_208" name="HH_{3, 2}" simulationType="fixed" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_209" name="HH_{3, 3}" simulationType="ode" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_209">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{HH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[hh_{3}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 3}],Reference=Concentration>)-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[PTCright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 0}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 3}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferHH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 2}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 4}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 3}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_210" name="HH_{3, 4}" simulationType="fixed" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_211" name="HH_{3, 5}" simulationType="ode" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_211">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{HH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[hh_{3}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 5}],Reference=Concentration>)-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[PTCright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 2}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 5}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferHH}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 4}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 0}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 5}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_212" name="IWG_{0}" simulationType="ode" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{IWG}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[wg_{0}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[IWG_{0}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Values[r_{EndoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[{EWG_{0}}^{tot}],Reference=Value>-&lt;CN=Root,Model=NoName,Vector=Values[r_{ExoWG}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[IWG_{0}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_213" name="IWG_{1}" simulationType="fixed" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_214" name="IWG_{2}" simulationType="fixed" compartment="Compartment_6" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_215" name="IWG_{3}" simulationType="fixed" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_216" name="PH_{0, 0}" simulationType="ode" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_216">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 3}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 0}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PH_{0\, 0}],Reference=Concentration>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PH}],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_217" name="PH_{0, 1}" simulationType="ode" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_217">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 4}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 1}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PH_{0\, 1}],Reference=Concentration>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PH}],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_218" name="PH_{0, 2}" simulationType="ode" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_218">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 5}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 2}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PH_{0\, 2}],Reference=Concentration>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PH}],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_219" name="PH_{0, 3}" simulationType="ode" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_219">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 0}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 3}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PH_{0\, 3}],Reference=Concentration>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PH}],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_220" name="PH_{0, 4}" simulationType="ode" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_220">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 1}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 4}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PH_{0\, 4}],Reference=Concentration>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PH}],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_221" name="PH_{0, 5}" simulationType="ode" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_221">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 2}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 5}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PH_{0\, 5}],Reference=Concentration>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PH}],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_222" name="PH_{1, 0}" simulationType="ode" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_222">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 3}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 0}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PH_{1\, 0}],Reference=Concentration>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PH}],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_223" name="PH_{1, 1}" simulationType="ode" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_223">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 4}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 1}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PH_{1\, 1}],Reference=Concentration>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PH}],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_224" name="PH_{1, 2}" simulationType="ode" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_224">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 5}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 2}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PH_{1\, 2}],Reference=Concentration>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PH}],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_225" name="PH_{1, 3}" simulationType="ode" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_225">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 0}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 3}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PH_{1\, 3}],Reference=Concentration>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PH}],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_226" name="PH_{1, 4}" simulationType="ode" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_226">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 1}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 4}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PH_{1\, 4}],Reference=Concentration>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PH}],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_227" name="PH_{1, 5}" simulationType="ode" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_227">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 2}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 5}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PH_{1\, 5}],Reference=Concentration>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PH}],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_228" name="PH_{2, 0}" simulationType="ode" compartment="Compartment_6" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_228">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 3}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 0}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PH_{2\, 0}],Reference=Concentration>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PH}],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_229" name="PH_{2, 1}" simulationType="ode" compartment="Compartment_6" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_229">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 4}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 1}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PH_{2\, 1}],Reference=Concentration>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PH}],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_230" name="PH_{2, 2}" simulationType="ode" compartment="Compartment_6" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_230">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 5}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 2}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PH_{2\, 2}],Reference=Concentration>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PH}],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_231" name="PH_{2, 3}" simulationType="ode" compartment="Compartment_6" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_231">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 0}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 3}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PH_{2\, 3}],Reference=Concentration>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PH}],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_232" name="PH_{2, 4}" simulationType="ode" compartment="Compartment_6" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_232">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 1}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 4}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PH_{2\, 4}],Reference=Concentration>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PH}],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_233" name="PH_{2, 5}" simulationType="ode" compartment="Compartment_6" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_233">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 2}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 5}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PH_{2\, 5}],Reference=Concentration>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PH}],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_234" name="PH_{3, 0}" simulationType="ode" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_234">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 3}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 0}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PH_{3\, 0}],Reference=Concentration>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PH}],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_235" name="PH_{3, 1}" simulationType="ode" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_235">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 4}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 1}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PH_{3\, 1}],Reference=Concentration>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PH}],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_236" name="PH_{3, 2}" simulationType="ode" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_236">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 5}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 2}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PH_{3\, 2}],Reference=Concentration>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PH}],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_237" name="PH_{3, 3}" simulationType="ode" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_237">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 0}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 3}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PH_{3\, 3}],Reference=Concentration>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PH}],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_238" name="PH_{3, 4}" simulationType="ode" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_238">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 1}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 4}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PH_{3\, 4}],Reference=Concentration>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PH}],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_239" name="PH_{3, 5}" simulationType="ode" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_239">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 2}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 5}],Reference=Concentration>-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PH_{3\, 5}],Reference=Concentration>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PH}],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_240" name="ptc_{0}" simulationType="fixed" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_241" name="PTC_{0, 0}" simulationType="fixed" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_242" name="PTC_{0, 1}" simulationType="ode" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_242">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[ptc_{0}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 1}],Reference=Concentration>)+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 4}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 1}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferPTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 0}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 2}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 1}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_243" name="PTC_{0, 2}" simulationType="fixed" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_244" name="PTC_{0, 3}" simulationType="ode" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_244">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[ptc_{0}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 3}],Reference=Concentration>)+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 0}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 3}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferPTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 2}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 4}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 3}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_245" name="PTC_{0, 4}" simulationType="fixed" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_246" name="PTC_{0, 5}" simulationType="ode" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_246">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[ptc_{0}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 5}],Reference=Concentration>)+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 2}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 5}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferPTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 4}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 0}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 5}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_247" name="ptc_{1}" simulationType="ode" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{ptc}],Reference=Value>*(phi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[CID_{1}],Reference=Concentration>*psi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[CN_{1}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CNptc}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CNptc}],Reference=Value>),&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CIDptc}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CIDptc}],Reference=Value>)-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[ptc_{1}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_248" name="PTC_{1, 0}" simulationType="fixed" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_249" name="PTC_{1, 1}" simulationType="ode" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_249">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[ptc_{1}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 1}],Reference=Concentration>)+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 4}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 1}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferPTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 0}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 2}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 1}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_250" name="PTC_{1, 2}" simulationType="fixed" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_251" name="PTC_{1, 3}" simulationType="ode" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_251">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[ptc_{1}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 3}],Reference=Concentration>)+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 0}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 3}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferPTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 2}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 4}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 3}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_252" name="PTC_{1, 4}" simulationType="fixed" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_253" name="PTC_{1, 5}" simulationType="ode" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_253">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[ptc_{1}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 5}],Reference=Concentration>)+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 2}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 5}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferPTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 4}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 0}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 5}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_254" name="ptc_{2}" simulationType="ode" compartment="Compartment_6" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_254">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{ptc}],Reference=Value>*(phi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[CID_{2}],Reference=Concentration>*psi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[CN_{2}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CNptc}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CNptc}],Reference=Value>),&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CIDptc}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CIDptc}],Reference=Value>)-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[ptc_{2}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_255" name="PTC_{2, 0}" simulationType="fixed" compartment="Compartment_6" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_256" name="PTC_{2, 1}" simulationType="ode" compartment="Compartment_6" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_256">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[ptc_{2}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 1}],Reference=Concentration>)+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 4}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 1}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferPTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 0}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 2}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 1}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_257" name="PTC_{2, 2}" simulationType="fixed" compartment="Compartment_6" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_258" name="PTC_{2, 3}" simulationType="ode" compartment="Compartment_6" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_258">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[ptc_{2}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 3}],Reference=Concentration>)+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 0}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 3}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferPTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 2}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 4}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 3}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_259" name="PTC_{2, 4}" simulationType="fixed" compartment="Compartment_6" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_260" name="PTC_{2, 5}" simulationType="ode" compartment="Compartment_6" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_260">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[ptc_{2}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 5}],Reference=Concentration>)+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 2}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 5}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferPTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 4}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 0}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 5}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_261" name="ptc_{3}" simulationType="fixed" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_262" name="PTC_{3, 0}" simulationType="fixed" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_263" name="PTC_{3, 1}" simulationType="ode" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_263">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[ptc_{3}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 1}],Reference=Concentration>)+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 4}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 1}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferPTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 0}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 2}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 1}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_264" name="PTC_{3, 2}" simulationType="fixed" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_265" name="PTC_{3, 3}" simulationType="ode" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_265">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[ptc_{3}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 3}],Reference=Concentration>)+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 0}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 3}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferPTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 2}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 4}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 3}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_266" name="PTC_{3, 4}" simulationType="fixed" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_267" name="PTC_{3, 5}" simulationType="ode" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_267">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{PTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[ptc_{3}],Reference=Concentration>/6-&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 5}],Reference=Concentration>)+-(&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[k_{PTCHH}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[left\[HHright\]_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 2}],Reference=Concentration>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 5}],Reference=Concentration>)+&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Values[r_{LMxferPTC}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 4}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 0}],Reference=Concentration>-2*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 5}],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_268" name="wg_{0}" simulationType="ode" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_268">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{wg}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Values[beta_wg],Reference=Value>*phi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[CID_{0}],Reference=Concentration>*psi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[CN_{0}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CNwg}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CNwg}],Reference=Value>),&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CIDwg}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CIDwg}],Reference=Value>)+&lt;CN=Root,Model=NoName,Vector=Values[alpha_{wg}],Reference=Value>*phi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[IWG_{0}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{WGwg}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{WGwg}],Reference=Value>))/(1+&lt;CN=Root,Model=NoName,Vector=Values[beta_wg],Reference=Value>*phi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[CID_{0}],Reference=Concentration>*psi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[CN_{0}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CNwg}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CNwg}],Reference=Value>),&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CIDwg}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CIDwg}],Reference=Value>)+&lt;CN=Root,Model=NoName,Vector=Values[alpha_{wg}],Reference=Value>*phi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[IWG_{0}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{WGwg}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{WGwg}],Reference=Value>))-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{wg}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[wg_{0}],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_269" name="wg_{1}" simulationType="ode" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_269">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{wg}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Values[beta_wg],Reference=Value>*phi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[CID_{1}],Reference=Concentration>*psi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[CN_{1}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CNwg}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CNwg}],Reference=Value>),&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CIDwg}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CIDwg}],Reference=Value>)+&lt;CN=Root,Model=NoName,Vector=Values[alpha_{wg}],Reference=Value>*phi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[IWG_{1}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{WGwg}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{WGwg}],Reference=Value>))/(1+&lt;CN=Root,Model=NoName,Vector=Values[beta_wg],Reference=Value>*phi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[CID_{1}],Reference=Concentration>*psi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[CN_{1}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CNwg}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CNwg}],Reference=Value>),&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CIDwg}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CIDwg}],Reference=Value>)+&lt;CN=Root,Model=NoName,Vector=Values[alpha_{wg}],Reference=Value>*phi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[IWG_{1}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{WGwg}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{WGwg}],Reference=Value>))-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{wg}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[wg_{1}],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_270" name="wg_{2}" simulationType="ode" compartment="Compartment_6" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_270">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{wg}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Values[beta_wg],Reference=Value>*phi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[CID_{2}],Reference=Concentration>*psi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[CN_{2}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CNwg}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CNwg}],Reference=Value>),&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CIDwg}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CIDwg}],Reference=Value>)+&lt;CN=Root,Model=NoName,Vector=Values[alpha_{wg}],Reference=Value>*phi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[IWG_{2}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{WGwg}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{WGwg}],Reference=Value>))/(1+&lt;CN=Root,Model=NoName,Vector=Values[beta_wg],Reference=Value>*phi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[CID_{2}],Reference=Concentration>*psi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[CN_{2}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CNwg}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CNwg}],Reference=Value>),&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CIDwg}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CIDwg}],Reference=Value>)+&lt;CN=Root,Model=NoName,Vector=Values[alpha_{wg}],Reference=Value>*phi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[IWG_{2}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{WGwg}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{WGwg}],Reference=Value>))-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{wg}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[wg_{2}],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_271" name="wg_{3}" simulationType="ode" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_271">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{wg}],Reference=Value>*(&lt;CN=Root,Model=NoName,Vector=Values[beta_wg],Reference=Value>*phi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[CID_{3}],Reference=Concentration>*psi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[CN_{3}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CNwg}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CNwg}],Reference=Value>),&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CIDwg}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CIDwg}],Reference=Value>)+&lt;CN=Root,Model=NoName,Vector=Values[alpha_{wg}],Reference=Value>*phi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[IWG_{3}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{WGwg}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{WGwg}],Reference=Value>))/(1+&lt;CN=Root,Model=NoName,Vector=Values[beta_wg],Reference=Value>*phi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[CID_{3}],Reference=Concentration>*psi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[CN_{3}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CNwg}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CNwg}],Reference=Value>),&lt;CN=Root,Model=NoName,Vector=Values[kappa_{CIDwg}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{CIDwg}],Reference=Value>)+&lt;CN=Root,Model=NoName,Vector=Values[alpha_{wg}],Reference=Value>*phi_1(&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[IWG_{3}],Reference=Concentration>,&lt;CN=Root,Model=NoName,Vector=Values[kappa_{WGwg}],Reference=Value>,&lt;CN=Root,Model=NoName,Vector=Values[nu_{WGwg}],Reference=Value>))-&lt;CN=Root,Model=NoName,Vector=Values[T_0],Reference=Value>/&lt;CN=Root,Model=NoName,Vector=Values[H_{wg}],Reference=Value>*&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[wg_{3}],Reference=Concentration>
        </Expression>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_62" name="alpha_{wg}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_62">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_63" name="beta_wg" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_63">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_64" name="C_{CID}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_64">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_65" name="r_{EndoWG}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_65">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_66" name="r_{ExoWG}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_66">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_67" name="H_{cid}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_67">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_68" name="H_{CID}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_68">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_69" name="H_{CN}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_69">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_70" name="H_{en}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_70">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_71" name="H_{EN}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_71">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_72" name="H_{EWG}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_72">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_73" name="H_{hh}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_73">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_74" name="H_{HH}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_74">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_75" name="H_{IWG}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_75">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_76" name="H_{PH}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_76">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_77" name="H_{ptc}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_77">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_78" name="H_{PTC}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_78">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_79" name="H_{wg}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_79">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_80" name="kappa_{Bcid}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_80">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_81" name="kappa_{CIDptc}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_81">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_82" name="kappa_{CIDwg}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_82">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_83" name="kappa_{CNen}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_83">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_84" name="kappa_{CNhh}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_84">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_85" name="kappa_{CNptc}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_85">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_86" name="kappa_{CNwg}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_86">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_87" name="kappa_{ENcid}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_87">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_88" name="kappa_{ENhh}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_88">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_89" name="k_{PTCHH}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_89">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_90" name="kappa_{PTCCID}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_90">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_91" name="kappa_{WGen}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_91">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_92" name="kappa_{WGwg}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_92">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_93" name="r_{LMxferHH}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_93">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_94" name="r_{LMxferPTC}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_94">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_95" name="r_{LMxferWG}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_95">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_96" name="left[HHright]_0" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_96">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_97" name="left[PTCright]_0" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_97">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_98" name="r_{MxferWG}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_98">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_99" name="nu_{Bcid}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_99">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_100" name="nu_{CIDptc}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_100">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_101" name="nu_{CIDwg}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_101">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_102" name="nu_{CNen}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_102">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_103" name="nu_{CNhh}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_103">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_104" name="nu_{CNptc}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_104">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_105" name="nu_{CNwg}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_105">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_106" name="nu_{ENcid}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_106">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_107" name="nu_{ENhh}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_107">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_108" name="nu_{PTCCID}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_108">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_109" name="nu_{WGen}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_109">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_110" name="nu_{WGwg}" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_110">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_111" name="T_0" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_111">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_112" name="{EWG_{n(0, j)}}^{tot}" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_112">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 3}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 4}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 5}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 0}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 1}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 2}],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_113" name="{EWG_{0}}^{tot}" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_113">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 0}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 1}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 2}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 3}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 4}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 5}],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_114" name="{PTC_{0}}^{tot}" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_114">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 0}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 1}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 2}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 3}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 4}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 5}],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_115" name="{EWG_{n(1, j)}}^{tot}" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_115">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 3}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 4}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 5}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 0}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 1}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 2}],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_116" name="{EWG_{1}}^{tot}" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_116">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 0}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 1}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 2}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 3}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 4}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 5}],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_117" name="{PTC_{1}}^{tot}" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_117">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 0}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 1}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 2}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 3}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 4}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 5}],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_118" name="{EWG_{n(2, j)}}^{tot}" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_118">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 3}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 4}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 5}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 0}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 1}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 2}],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_119" name="{EWG_{2}}^{tot}" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_119">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 0}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 1}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 2}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 3}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 4}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 5}],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_120" name="{PTC_{2}}^{tot}" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_120">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 0}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 1}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 2}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 3}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 4}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 5}],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_121" name="{EWG_{n(3, j)}}^{tot}" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_121">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 3}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 4}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 5}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 0}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 1}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 2}],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_122" name="{EWG_{3}}^{tot}" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_122">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 0}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 1}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 2}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 3}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 4}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 5}],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_123" name="{PTC_{3}}^{tot}" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_123">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 0}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 1}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 2}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 3}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 4}],Reference=Concentration>+&lt;CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 5}],Reference=Concentration>
        </Expression>
      </ModelValue>
    </ListOfModelValues>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_1">
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
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[B_{0}]" value="9.0332111400000001e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[B_{1}]" value="3.0110703800000002e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[B_{2}]" value="9.0332111400000001e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[B_{3}]" value="3.0110703800000002e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[cid_{0}]" value="9.0332111400000001e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[CID_{0}]" value="9.0332111400000001e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[cid_{1}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[CID_{1}]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[cid_{2}]" value="9.0332111400000001e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[CID_{2}]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[cid_{3}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[CID_{3}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[CN_{0}]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[CN_{1}]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[CN_{2}]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[CN_{3}]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[en_{0}]" value="9.0332111400000001e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EN_{0}]" value="9.0332111400000001e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[en_{1}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EN_{1}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[en_{2}]" value="9.0332111400000001e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EN_{2}]" value="9.0332111400000001e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[en_{3}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EN_{3}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 0}]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 1}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 2}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 3}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 4}]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 5}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 0}]" value="6.0221407599999757e+23" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 1}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 2}]" value="6.0221407599999764e+23" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 3}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 4}]" value="6.0221407599999771e+23" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 5}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 0}]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 1}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 2}]" value="9.0332111400000001e+22" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 3}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 4}]" value="9.0332111400000001e+22" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 5}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 0}]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 1}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 2}]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 3}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 4}]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 5}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[hh_{0}]" value="9.0332111400000001e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 0}]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 1}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 2}]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 3}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 4}]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 5}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[hh_{1}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 0}]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 1}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 2}]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 3}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 4}]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 5}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[hh_{2}]" value="9.0332111400000001e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 0}]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 1}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 2}]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 3}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 4}]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 5}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[hh_{3}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 0}]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 1}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 2}]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 3}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 4}]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 5}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[IWG_{0}]" value="9.0332111400000001e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[IWG_{1}]" value="6.0221407599999797e+23" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[IWG_{2}]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[IWG_{3}]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PH_{0\, 0}]" value="9.0332111400000001e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PH_{0\, 1}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PH_{0\, 2}]" value="9.0332111400000001e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PH_{0\, 3}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PH_{0\, 4}]" value="9.0332111400000001e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PH_{0\, 5}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PH_{1\, 0}]" value="9.0332111400000001e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PH_{1\, 1}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PH_{1\, 2}]" value="9.0332111400000001e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PH_{1\, 3}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PH_{1\, 4}]" value="9.0332111400000001e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PH_{1\, 5}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PH_{2\, 0}]" value="9.0332111400000001e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PH_{2\, 1}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PH_{2\, 2}]" value="9.0332111400000001e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PH_{2\, 3}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PH_{2\, 4}]" value="9.0332111400000001e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PH_{2\, 5}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PH_{3\, 0}]" value="9.0332111400000001e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PH_{3\, 1}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PH_{3\, 2}]" value="9.0332111400000001e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PH_{3\, 3}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PH_{3\, 4}]" value="9.0332111400000001e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PH_{3\, 5}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[ptc_{0}]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 0}]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 1}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 2}]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 3}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 4}]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 5}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[ptc_{1}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 0}]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 1}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 2}]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 3}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 4}]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 5}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[ptc_{2}]" value="9.0332111400000001e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 0}]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 1}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 2}]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 3}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 4}]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 5}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[ptc_{3}]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 0}]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 1}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 2}]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 3}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 4}]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 5}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[wg_{0}]" value="9.0332111400000001e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[wg_{1}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[wg_{2}]" value="9.0332111400000001e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[wg_{3}]" value="3.0110703800000002e+22" type="Species" simulationType="ode"/>
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
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[{EWG_{n(0\, j)}}^{tot}]" value="1.1499999999999964" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[{EWG_{0}}^{tot}]" value="0.15000000000000002" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[{PTC_{0}}^{tot}]" value="0.15000000000000002" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[{EWG_{n(1\, j)}}^{tot}]" value="1.299999999999996" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[{EWG_{1}}^{tot}]" value="3.1499999999999879" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[{PTC_{1}}^{tot}]" value="0.15000000000000002" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[{EWG_{n(2\, j)}}^{tot}]" value="1.1499999999999961" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[{EWG_{2}}^{tot}]" value="0.45000000000000001" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[{PTC_{2}}^{tot}]" value="0.15000000000000002" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[{EWG_{n(3\, j)}}^{tot}]" value="0.30000000000000004" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[{EWG_{3}}^{tot}]" value="0.15000000000000002" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[{PTC_{3}}^{tot}]" value="0.15000000000000002" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_140"/>
      <StateTemplateVariable objectReference="Metabolite_141"/>
      <StateTemplateVariable objectReference="Metabolite_152"/>
      <StateTemplateVariable objectReference="Metabolite_153"/>
      <StateTemplateVariable objectReference="Metabolite_161"/>
      <StateTemplateVariable objectReference="Metabolite_162"/>
      <StateTemplateVariable objectReference="Metabolite_163"/>
      <StateTemplateVariable objectReference="Metabolite_164"/>
      <StateTemplateVariable objectReference="Metabolite_165"/>
      <StateTemplateVariable objectReference="Metabolite_184"/>
      <StateTemplateVariable objectReference="Metabolite_186"/>
      <StateTemplateVariable objectReference="Metabolite_188"/>
      <StateTemplateVariable objectReference="Metabolite_190"/>
      <StateTemplateVariable objectReference="Metabolite_212"/>
      <StateTemplateVariable objectReference="Metabolite_216"/>
      <StateTemplateVariable objectReference="Metabolite_217"/>
      <StateTemplateVariable objectReference="Metabolite_218"/>
      <StateTemplateVariable objectReference="Metabolite_219"/>
      <StateTemplateVariable objectReference="Metabolite_220"/>
      <StateTemplateVariable objectReference="Metabolite_221"/>
      <StateTemplateVariable objectReference="Metabolite_242"/>
      <StateTemplateVariable objectReference="Metabolite_244"/>
      <StateTemplateVariable objectReference="Metabolite_246"/>
      <StateTemplateVariable objectReference="Metabolite_268"/>
      <StateTemplateVariable objectReference="Metabolite_142"/>
      <StateTemplateVariable objectReference="Metabolite_154"/>
      <StateTemplateVariable objectReference="Metabolite_155"/>
      <StateTemplateVariable objectReference="Metabolite_167"/>
      <StateTemplateVariable objectReference="Metabolite_169"/>
      <StateTemplateVariable objectReference="Metabolite_171"/>
      <StateTemplateVariable objectReference="Metabolite_191"/>
      <StateTemplateVariable objectReference="Metabolite_193"/>
      <StateTemplateVariable objectReference="Metabolite_195"/>
      <StateTemplateVariable objectReference="Metabolite_197"/>
      <StateTemplateVariable objectReference="Metabolite_222"/>
      <StateTemplateVariable objectReference="Metabolite_223"/>
      <StateTemplateVariable objectReference="Metabolite_224"/>
      <StateTemplateVariable objectReference="Metabolite_225"/>
      <StateTemplateVariable objectReference="Metabolite_226"/>
      <StateTemplateVariable objectReference="Metabolite_227"/>
      <StateTemplateVariable objectReference="Metabolite_247"/>
      <StateTemplateVariable objectReference="Metabolite_249"/>
      <StateTemplateVariable objectReference="Metabolite_251"/>
      <StateTemplateVariable objectReference="Metabolite_253"/>
      <StateTemplateVariable objectReference="Metabolite_269"/>
      <StateTemplateVariable objectReference="Metabolite_144"/>
      <StateTemplateVariable objectReference="Metabolite_156"/>
      <StateTemplateVariable objectReference="Metabolite_157"/>
      <StateTemplateVariable objectReference="Metabolite_173"/>
      <StateTemplateVariable objectReference="Metabolite_175"/>
      <StateTemplateVariable objectReference="Metabolite_177"/>
      <StateTemplateVariable objectReference="Metabolite_198"/>
      <StateTemplateVariable objectReference="Metabolite_200"/>
      <StateTemplateVariable objectReference="Metabolite_202"/>
      <StateTemplateVariable objectReference="Metabolite_204"/>
      <StateTemplateVariable objectReference="Metabolite_228"/>
      <StateTemplateVariable objectReference="Metabolite_229"/>
      <StateTemplateVariable objectReference="Metabolite_230"/>
      <StateTemplateVariable objectReference="Metabolite_231"/>
      <StateTemplateVariable objectReference="Metabolite_232"/>
      <StateTemplateVariable objectReference="Metabolite_233"/>
      <StateTemplateVariable objectReference="Metabolite_254"/>
      <StateTemplateVariable objectReference="Metabolite_256"/>
      <StateTemplateVariable objectReference="Metabolite_258"/>
      <StateTemplateVariable objectReference="Metabolite_260"/>
      <StateTemplateVariable objectReference="Metabolite_270"/>
      <StateTemplateVariable objectReference="Metabolite_146"/>
      <StateTemplateVariable objectReference="Metabolite_147"/>
      <StateTemplateVariable objectReference="Metabolite_158"/>
      <StateTemplateVariable objectReference="Metabolite_159"/>
      <StateTemplateVariable objectReference="Metabolite_179"/>
      <StateTemplateVariable objectReference="Metabolite_181"/>
      <StateTemplateVariable objectReference="Metabolite_183"/>
      <StateTemplateVariable objectReference="Metabolite_205"/>
      <StateTemplateVariable objectReference="Metabolite_207"/>
      <StateTemplateVariable objectReference="Metabolite_209"/>
      <StateTemplateVariable objectReference="Metabolite_211"/>
      <StateTemplateVariable objectReference="Metabolite_234"/>
      <StateTemplateVariable objectReference="Metabolite_235"/>
      <StateTemplateVariable objectReference="Metabolite_236"/>
      <StateTemplateVariable objectReference="Metabolite_237"/>
      <StateTemplateVariable objectReference="Metabolite_238"/>
      <StateTemplateVariable objectReference="Metabolite_239"/>
      <StateTemplateVariable objectReference="Metabolite_263"/>
      <StateTemplateVariable objectReference="Metabolite_265"/>
      <StateTemplateVariable objectReference="Metabolite_267"/>
      <StateTemplateVariable objectReference="Metabolite_271"/>
      <StateTemplateVariable objectReference="ModelValue_112"/>
      <StateTemplateVariable objectReference="ModelValue_113"/>
      <StateTemplateVariable objectReference="ModelValue_114"/>
      <StateTemplateVariable objectReference="ModelValue_115"/>
      <StateTemplateVariable objectReference="ModelValue_116"/>
      <StateTemplateVariable objectReference="ModelValue_117"/>
      <StateTemplateVariable objectReference="ModelValue_118"/>
      <StateTemplateVariable objectReference="ModelValue_119"/>
      <StateTemplateVariable objectReference="ModelValue_120"/>
      <StateTemplateVariable objectReference="ModelValue_121"/>
      <StateTemplateVariable objectReference="ModelValue_122"/>
      <StateTemplateVariable objectReference="ModelValue_123"/>
      <StateTemplateVariable objectReference="Metabolite_148"/>
      <StateTemplateVariable objectReference="Metabolite_160"/>
      <StateTemplateVariable objectReference="Metabolite_185"/>
      <StateTemplateVariable objectReference="Metabolite_187"/>
      <StateTemplateVariable objectReference="Metabolite_189"/>
      <StateTemplateVariable objectReference="Metabolite_240"/>
      <StateTemplateVariable objectReference="Metabolite_241"/>
      <StateTemplateVariable objectReference="Metabolite_243"/>
      <StateTemplateVariable objectReference="Metabolite_245"/>
      <StateTemplateVariable objectReference="Metabolite_143"/>
      <StateTemplateVariable objectReference="Metabolite_149"/>
      <StateTemplateVariable objectReference="Metabolite_166"/>
      <StateTemplateVariable objectReference="Metabolite_168"/>
      <StateTemplateVariable objectReference="Metabolite_170"/>
      <StateTemplateVariable objectReference="Metabolite_192"/>
      <StateTemplateVariable objectReference="Metabolite_194"/>
      <StateTemplateVariable objectReference="Metabolite_196"/>
      <StateTemplateVariable objectReference="Metabolite_213"/>
      <StateTemplateVariable objectReference="Metabolite_248"/>
      <StateTemplateVariable objectReference="Metabolite_250"/>
      <StateTemplateVariable objectReference="Metabolite_252"/>
      <StateTemplateVariable objectReference="Metabolite_145"/>
      <StateTemplateVariable objectReference="Metabolite_150"/>
      <StateTemplateVariable objectReference="Metabolite_172"/>
      <StateTemplateVariable objectReference="Metabolite_174"/>
      <StateTemplateVariable objectReference="Metabolite_176"/>
      <StateTemplateVariable objectReference="Metabolite_199"/>
      <StateTemplateVariable objectReference="Metabolite_201"/>
      <StateTemplateVariable objectReference="Metabolite_203"/>
      <StateTemplateVariable objectReference="Metabolite_214"/>
      <StateTemplateVariable objectReference="Metabolite_255"/>
      <StateTemplateVariable objectReference="Metabolite_257"/>
      <StateTemplateVariable objectReference="Metabolite_259"/>
      <StateTemplateVariable objectReference="Metabolite_151"/>
      <StateTemplateVariable objectReference="Metabolite_178"/>
      <StateTemplateVariable objectReference="Metabolite_180"/>
      <StateTemplateVariable objectReference="Metabolite_182"/>
      <StateTemplateVariable objectReference="Metabolite_206"/>
      <StateTemplateVariable objectReference="Metabolite_208"/>
      <StateTemplateVariable objectReference="Metabolite_210"/>
      <StateTemplateVariable objectReference="Metabolite_215"/>
      <StateTemplateVariable objectReference="Metabolite_261"/>
      <StateTemplateVariable objectReference="Metabolite_262"/>
      <StateTemplateVariable objectReference="Metabolite_264"/>
      <StateTemplateVariable objectReference="Metabolite_266"/>
      <StateTemplateVariable objectReference="Metabolite_136"/>
      <StateTemplateVariable objectReference="Metabolite_137"/>
      <StateTemplateVariable objectReference="Metabolite_138"/>
      <StateTemplateVariable objectReference="Metabolite_139"/>
      <StateTemplateVariable objectReference="Compartment_4"/>
      <StateTemplateVariable objectReference="Compartment_5"/>
      <StateTemplateVariable objectReference="Compartment_6"/>
      <StateTemplateVariable objectReference="Compartment_7"/>
      <StateTemplateVariable objectReference="ModelValue_62"/>
      <StateTemplateVariable objectReference="ModelValue_63"/>
      <StateTemplateVariable objectReference="ModelValue_64"/>
      <StateTemplateVariable objectReference="ModelValue_65"/>
      <StateTemplateVariable objectReference="ModelValue_66"/>
      <StateTemplateVariable objectReference="ModelValue_67"/>
      <StateTemplateVariable objectReference="ModelValue_68"/>
      <StateTemplateVariable objectReference="ModelValue_69"/>
      <StateTemplateVariable objectReference="ModelValue_70"/>
      <StateTemplateVariable objectReference="ModelValue_71"/>
      <StateTemplateVariable objectReference="ModelValue_72"/>
      <StateTemplateVariable objectReference="ModelValue_73"/>
      <StateTemplateVariable objectReference="ModelValue_74"/>
      <StateTemplateVariable objectReference="ModelValue_75"/>
      <StateTemplateVariable objectReference="ModelValue_76"/>
      <StateTemplateVariable objectReference="ModelValue_77"/>
      <StateTemplateVariable objectReference="ModelValue_78"/>
      <StateTemplateVariable objectReference="ModelValue_79"/>
      <StateTemplateVariable objectReference="ModelValue_80"/>
      <StateTemplateVariable objectReference="ModelValue_81"/>
      <StateTemplateVariable objectReference="ModelValue_82"/>
      <StateTemplateVariable objectReference="ModelValue_83"/>
      <StateTemplateVariable objectReference="ModelValue_84"/>
      <StateTemplateVariable objectReference="ModelValue_85"/>
      <StateTemplateVariable objectReference="ModelValue_86"/>
      <StateTemplateVariable objectReference="ModelValue_87"/>
      <StateTemplateVariable objectReference="ModelValue_88"/>
      <StateTemplateVariable objectReference="ModelValue_89"/>
      <StateTemplateVariable objectReference="ModelValue_90"/>
      <StateTemplateVariable objectReference="ModelValue_91"/>
      <StateTemplateVariable objectReference="ModelValue_92"/>
      <StateTemplateVariable objectReference="ModelValue_93"/>
      <StateTemplateVariable objectReference="ModelValue_94"/>
      <StateTemplateVariable objectReference="ModelValue_95"/>
      <StateTemplateVariable objectReference="ModelValue_96"/>
      <StateTemplateVariable objectReference="ModelValue_97"/>
      <StateTemplateVariable objectReference="ModelValue_98"/>
      <StateTemplateVariable objectReference="ModelValue_99"/>
      <StateTemplateVariable objectReference="ModelValue_100"/>
      <StateTemplateVariable objectReference="ModelValue_101"/>
      <StateTemplateVariable objectReference="ModelValue_102"/>
      <StateTemplateVariable objectReference="ModelValue_103"/>
      <StateTemplateVariable objectReference="ModelValue_104"/>
      <StateTemplateVariable objectReference="ModelValue_105"/>
      <StateTemplateVariable objectReference="ModelValue_106"/>
      <StateTemplateVariable objectReference="ModelValue_107"/>
      <StateTemplateVariable objectReference="ModelValue_108"/>
      <StateTemplateVariable objectReference="ModelValue_109"/>
      <StateTemplateVariable objectReference="ModelValue_110"/>
      <StateTemplateVariable objectReference="ModelValue_111"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 9.0332111400000001e+22 9.0332111400000001e+22 9.0332111400000001e+22 9.0332111400000001e+22 3.0110703800000002e+22 0 3.0110703800000002e+22 0 3.0110703800000002e+22 9.0332111400000001e+22 3.0110703800000002e+22 3.0110703800000002e+22 3.0110703800000002e+22 9.0332111400000001e+22 9.0332111400000001e+22 3.0110703800000002e+22 9.0332111400000001e+22 3.0110703800000002e+22 9.0332111400000001e+22 3.0110703800000002e+22 3.0110703800000002e+22 3.0110703800000002e+22 3.0110703800000002e+22 9.0332111400000001e+22 3.0110703800000002e+22 3.0110703800000002e+22 3.0110703800000002e+22 3.0110703800000002e+22 3.0110703800000002e+22 3.0110703800000002e+22 3.0110703800000002e+22 3.0110703800000002e+22 3.0110703800000002e+22 3.0110703800000002e+22 9.0332111400000001e+22 3.0110703800000002e+22 9.0332111400000001e+22 3.0110703800000002e+22 9.0332111400000001e+22 3.0110703800000002e+22 3.0110703800000002e+22 3.0110703800000002e+22 3.0110703800000002e+22 3.0110703800000002e+22 3.0110703800000002e+22 9.0332111400000001e+22 9.0332111400000001e+22 9.0332111400000001e+22 3.0110703800000002e+22 3.0110703800000002e+22 3.0110703800000002e+22 9.0332111400000001e+22 3.0110703800000002e+22 3.0110703800000002e+22 3.0110703800000002e+22 9.0332111400000001e+22 3.0110703800000002e+22 9.0332111400000001e+22 3.0110703800000002e+22 9.0332111400000001e+22 3.0110703800000002e+22 9.0332111400000001e+22 3.0110703800000002e+22 3.0110703800000002e+22 3.0110703800000002e+22 9.0332111400000001e+22 3.0110703800000002e+22 3.0110703800000002e+22 3.0110703800000002e+22 3.0110703800000002e+22 3.0110703800000002e+22 3.0110703800000002e+22 3.0110703800000002e+22 3.0110703800000002e+22 3.0110703800000002e+22 3.0110703800000002e+22 3.0110703800000002e+22 9.0332111400000001e+22 3.0110703800000002e+22 9.0332111400000001e+22 3.0110703800000002e+22 9.0332111400000001e+22 3.0110703800000002e+22 3.0110703800000002e+22 3.0110703800000002e+22 3.0110703800000002e+22 3.0110703800000002e+22 1.1499999999999964 0.15000000000000002 0.15000000000000002 1.299999999999996 3.1499999999999879 0.15000000000000002 1.1499999999999961 0.45000000000000001 0.15000000000000002 0.30000000000000004 0.15000000000000002 0.15000000000000002 0 0 0 0 0 0 0 0 0 0 0 6.0221407599999757e+23 6.0221407599999764e+23 6.0221407599999771e+23 0 0 0 6.0221407599999797e+23 0 0 0 0 0 0 9.0332111400000001e+22 9.0332111400000001e+22 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9.0332111400000001e+22 3.0110703800000002e+22 9.0332111400000001e+22 3.0110703800000002e+22 1 1 1 1 6.0053489999999998 5.204021 0.21791068999999999 0.022727015999999999 9.0256489999999996 49.707165000000003 64.972059999999999 33.628746 46.018706999999999 89.086945 83.471405000000004 71.173310000000001 85.202340000000007 42.216594999999998 69.082759999999993 27.042265 7.0865080000000003 46.868214000000002 0.060660119999999998 0.012318047 0.18530468999999999 0.071796730000000003 0.0094278890000000001 0.39010437999999997 0.024009527999999999 0.16834398 0.0025787520000000001 0.00040299999999999998 0.0011283840000000001 0.15238990999999999 0.0033452209999999998 0.0045493069999999998 0.0081650779999999992 0.0046140920000000002 1252.9409000000001 194526.14000000001 0.001043326 1 8.4492930000000008 7.7842817000000002 4.4584903999999996 4.5680389999999997 5.1261825999999999 9.728828 3.8734335999999998 9.3890290000000007 7.4913926000000002 3.3611936999999998 8.4920249999999999 1 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_30" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_21" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_29" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_23" target="test.tsv" append="0" confirmOverwrite="1"/>
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
    <Task key="Task_28" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Report reference="Report_24" target="copasi/unp-40.txt" append="0" confirmOverwrite="1"/>
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
            <Parameter name="Minimum" type="float" value="0.14999999999999999"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[B_{1}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[B_{2}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.14999999999999999"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[B_{3}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[CID_{0}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.14999999999999999"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[CID_{3}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EN_{0}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.14999999999999999"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EN_{1}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EN_{2}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.14999999999999999"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EN_{3}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 1}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 3}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[EWG_{0\, 5}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 1}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 3}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[EWG_{1\, 5}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 1}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 2}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.14999999999999999"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 3}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 4}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.14999999999999999"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 5}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 1}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 3}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[EWG_{3\, 5}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 1}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 3}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[HH_{0\, 5}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 1}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 3}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[HH_{1\, 5}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 1}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 3}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[HH_{2\, 5}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 1}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 3}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[HH_{3\, 5}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[IWG_{0}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.14999999999999999"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PH_{0\, 0}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.14999999999999999"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PH_{0\, 1}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PH_{0\, 2}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.14999999999999999"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PH_{0\, 3}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PH_{0\, 4}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.14999999999999999"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PH_{0\, 5}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PH_{1\, 0}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.14999999999999999"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PH_{1\, 1}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PH_{1\, 2}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.14999999999999999"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PH_{1\, 3}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PH_{1\, 4}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.14999999999999999"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PH_{1\, 5}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PH_{2\, 0}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.14999999999999999"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PH_{2\, 1}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PH_{2\, 2}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.14999999999999999"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PH_{2\, 3}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PH_{2\, 4}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.14999999999999999"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PH_{2\, 5}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PH_{3\, 0}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.14999999999999999"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PH_{3\, 1}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PH_{3\, 2}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.14999999999999999"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PH_{3\, 3}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PH_{3\, 4}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.14999999999999999"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PH_{3\, 5}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 1}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 3}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[PTC_{0\, 5}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 1}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 3}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[PTC_{1\, 5}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 1}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 3}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[PTC_{2\, 5}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 1}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 3}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[PTC_{3\, 5}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[cid_{0}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.14999999999999999"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[cid_{1}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[cid_{2}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.14999999999999999"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[cid_{3}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[en_{0}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.14999999999999999"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[en_{1}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[en_{2}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.14999999999999999"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[en_{3}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[hh_{0}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.14999999999999999"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[hh_{1}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[hh_{2}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.14999999999999999"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[hh_{3}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[ptc_{1}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[ptc_{2}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.14999999999999999"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_0],Vector=Metabolites[wg_{0}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.14999999999999999"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[wg_{1}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[wg_{2}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.14999999999999999"/>
            <Parameter name="Maximum" type="float" value="0.40000000000000002"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[cell_3],Vector=Metabolites[wg_{3}],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.050000000000000003"/>
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
    <Task key="Task_27" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_19" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_26" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_18" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_25" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_17" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_24" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_16" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_30"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_23" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_15" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_22" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_14" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_33" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_13" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_32" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Report reference="Report_12" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_21" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
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
    <Task key="Task_20" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_11" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_30"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
    <Task key="Task_19" name="Time-Course Sensitivities" type="timeSensitivities" scheduled="false" updateModel="false">
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
    <Report key="Report_21" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_20" name="Time-Course" taskType="timeCourse" separator="&#x09;" precision="6">
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
    <Report key="Report_19" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_18" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
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
    <Report key="Report_17" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
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
    <Report key="Report_16" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_15" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
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
    <Report key="Report_14" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_13" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
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
    <Report key="Report_12" name="Moieties" taskType="moieties" separator="&#x09;" precision="6">
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
    <Report key="Report_11" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
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
    <Report key="Report_23" name="report1" taskType="timeCourse" separator="&#x09;" precision="6">
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
      </Table>
    </Report>
    <Report key="Report_24" name="report1_copy" taskType="scan" separator="&#x09;" precision="6">
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
      </Table>
    </Report>
  </ListOfReports>
  <ListOfPlots>
    <PlotSpecification name="plot" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[en_{2}]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NoName,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[en_{2}],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[wg_{1}]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NoName,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=NoName,Vector=Compartments[cell_1],Vector=Metabolites[wg_{1}],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="plot_copy" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[EWG_{2, 1}]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NoName,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=NoName,Vector=Compartments[cell_2],Vector=Metabolites[EWG_{2\, 1}],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="vondassowmodelparam2_unpatternedinit.xml">
    <SBMLMap SBMLid="B_cell_0" COPASIkey="Metabolite_136"/>
    <SBMLMap SBMLid="B_cell_1" COPASIkey="Metabolite_137"/>
    <SBMLMap SBMLid="B_cell_2" COPASIkey="Metabolite_138"/>
    <SBMLMap SBMLid="B_cell_3" COPASIkey="Metabolite_139"/>
    <SBMLMap SBMLid="CID_cell_0" COPASIkey="Metabolite_141"/>
    <SBMLMap SBMLid="CID_cell_1" COPASIkey="Metabolite_143"/>
    <SBMLMap SBMLid="CID_cell_2" COPASIkey="Metabolite_145"/>
    <SBMLMap SBMLid="CID_cell_3" COPASIkey="Metabolite_147"/>
    <SBMLMap SBMLid="CN_cell_0" COPASIkey="Metabolite_148"/>
    <SBMLMap SBMLid="CN_cell_1" COPASIkey="Metabolite_149"/>
    <SBMLMap SBMLid="CN_cell_2" COPASIkey="Metabolite_150"/>
    <SBMLMap SBMLid="CN_cell_3" COPASIkey="Metabolite_151"/>
    <SBMLMap SBMLid="C_CID" COPASIkey="ModelValue_64"/>
    <SBMLMap SBMLid="EN_cell_0" COPASIkey="Metabolite_153"/>
    <SBMLMap SBMLid="EN_cell_1" COPASIkey="Metabolite_155"/>
    <SBMLMap SBMLid="EN_cell_2" COPASIkey="Metabolite_157"/>
    <SBMLMap SBMLid="EN_cell_3" COPASIkey="Metabolite_159"/>
    <SBMLMap SBMLid="EWG_cell_0_side_0" COPASIkey="Metabolite_160"/>
    <SBMLMap SBMLid="EWG_cell_0_side_1" COPASIkey="Metabolite_161"/>
    <SBMLMap SBMLid="EWG_cell_0_side_2" COPASIkey="Metabolite_162"/>
    <SBMLMap SBMLid="EWG_cell_0_side_3" COPASIkey="Metabolite_163"/>
    <SBMLMap SBMLid="EWG_cell_0_side_4" COPASIkey="Metabolite_164"/>
    <SBMLMap SBMLid="EWG_cell_0_side_5" COPASIkey="Metabolite_165"/>
    <SBMLMap SBMLid="EWG_cell_1_side_0" COPASIkey="Metabolite_166"/>
    <SBMLMap SBMLid="EWG_cell_1_side_1" COPASIkey="Metabolite_167"/>
    <SBMLMap SBMLid="EWG_cell_1_side_2" COPASIkey="Metabolite_168"/>
    <SBMLMap SBMLid="EWG_cell_1_side_3" COPASIkey="Metabolite_169"/>
    <SBMLMap SBMLid="EWG_cell_1_side_4" COPASIkey="Metabolite_170"/>
    <SBMLMap SBMLid="EWG_cell_1_side_5" COPASIkey="Metabolite_171"/>
    <SBMLMap SBMLid="EWG_cell_2_side_0" COPASIkey="Metabolite_172"/>
    <SBMLMap SBMLid="EWG_cell_2_side_1" COPASIkey="Metabolite_173"/>
    <SBMLMap SBMLid="EWG_cell_2_side_2" COPASIkey="Metabolite_174"/>
    <SBMLMap SBMLid="EWG_cell_2_side_3" COPASIkey="Metabolite_175"/>
    <SBMLMap SBMLid="EWG_cell_2_side_4" COPASIkey="Metabolite_176"/>
    <SBMLMap SBMLid="EWG_cell_2_side_5" COPASIkey="Metabolite_177"/>
    <SBMLMap SBMLid="EWG_cell_3_side_0" COPASIkey="Metabolite_178"/>
    <SBMLMap SBMLid="EWG_cell_3_side_1" COPASIkey="Metabolite_179"/>
    <SBMLMap SBMLid="EWG_cell_3_side_2" COPASIkey="Metabolite_180"/>
    <SBMLMap SBMLid="EWG_cell_3_side_3" COPASIkey="Metabolite_181"/>
    <SBMLMap SBMLid="EWG_cell_3_side_4" COPASIkey="Metabolite_182"/>
    <SBMLMap SBMLid="EWG_cell_3_side_5" COPASIkey="Metabolite_183"/>
    <SBMLMap SBMLid="EWG_tot_cell_0" COPASIkey="ModelValue_113"/>
    <SBMLMap SBMLid="EWG_tot_cell_1" COPASIkey="ModelValue_116"/>
    <SBMLMap SBMLid="EWG_tot_cell_2" COPASIkey="ModelValue_119"/>
    <SBMLMap SBMLid="EWG_tot_cell_3" COPASIkey="ModelValue_122"/>
    <SBMLMap SBMLid="EWG_tot_pres_cell_0" COPASIkey="ModelValue_112"/>
    <SBMLMap SBMLid="EWG_tot_pres_cell_1" COPASIkey="ModelValue_115"/>
    <SBMLMap SBMLid="EWG_tot_pres_cell_2" COPASIkey="ModelValue_118"/>
    <SBMLMap SBMLid="EWG_tot_pres_cell_3" COPASIkey="ModelValue_121"/>
    <SBMLMap SBMLid="Endo_WG" COPASIkey="ModelValue_65"/>
    <SBMLMap SBMLid="Exo_WG" COPASIkey="ModelValue_66"/>
    <SBMLMap SBMLid="HH_cell_0_side_0" COPASIkey="Metabolite_185"/>
    <SBMLMap SBMLid="HH_cell_0_side_1" COPASIkey="Metabolite_186"/>
    <SBMLMap SBMLid="HH_cell_0_side_2" COPASIkey="Metabolite_187"/>
    <SBMLMap SBMLid="HH_cell_0_side_3" COPASIkey="Metabolite_188"/>
    <SBMLMap SBMLid="HH_cell_0_side_4" COPASIkey="Metabolite_189"/>
    <SBMLMap SBMLid="HH_cell_0_side_5" COPASIkey="Metabolite_190"/>
    <SBMLMap SBMLid="HH_cell_1_side_0" COPASIkey="Metabolite_192"/>
    <SBMLMap SBMLid="HH_cell_1_side_1" COPASIkey="Metabolite_193"/>
    <SBMLMap SBMLid="HH_cell_1_side_2" COPASIkey="Metabolite_194"/>
    <SBMLMap SBMLid="HH_cell_1_side_3" COPASIkey="Metabolite_195"/>
    <SBMLMap SBMLid="HH_cell_1_side_4" COPASIkey="Metabolite_196"/>
    <SBMLMap SBMLid="HH_cell_1_side_5" COPASIkey="Metabolite_197"/>
    <SBMLMap SBMLid="HH_cell_2_side_0" COPASIkey="Metabolite_199"/>
    <SBMLMap SBMLid="HH_cell_2_side_1" COPASIkey="Metabolite_200"/>
    <SBMLMap SBMLid="HH_cell_2_side_2" COPASIkey="Metabolite_201"/>
    <SBMLMap SBMLid="HH_cell_2_side_3" COPASIkey="Metabolite_202"/>
    <SBMLMap SBMLid="HH_cell_2_side_4" COPASIkey="Metabolite_203"/>
    <SBMLMap SBMLid="HH_cell_2_side_5" COPASIkey="Metabolite_204"/>
    <SBMLMap SBMLid="HH_cell_3_side_0" COPASIkey="Metabolite_206"/>
    <SBMLMap SBMLid="HH_cell_3_side_1" COPASIkey="Metabolite_207"/>
    <SBMLMap SBMLid="HH_cell_3_side_2" COPASIkey="Metabolite_208"/>
    <SBMLMap SBMLid="HH_cell_3_side_3" COPASIkey="Metabolite_209"/>
    <SBMLMap SBMLid="HH_cell_3_side_4" COPASIkey="Metabolite_210"/>
    <SBMLMap SBMLid="HH_cell_3_side_5" COPASIkey="Metabolite_211"/>
    <SBMLMap SBMLid="H_CID" COPASIkey="ModelValue_68"/>
    <SBMLMap SBMLid="H_CN" COPASIkey="ModelValue_69"/>
    <SBMLMap SBMLid="H_EN" COPASIkey="ModelValue_71"/>
    <SBMLMap SBMLid="H_EWG" COPASIkey="ModelValue_72"/>
    <SBMLMap SBMLid="H_HH" COPASIkey="ModelValue_74"/>
    <SBMLMap SBMLid="H_IWG" COPASIkey="ModelValue_75"/>
    <SBMLMap SBMLid="H_PH" COPASIkey="ModelValue_76"/>
    <SBMLMap SBMLid="H_PTC" COPASIkey="ModelValue_78"/>
    <SBMLMap SBMLid="H_cid" COPASIkey="ModelValue_67"/>
    <SBMLMap SBMLid="H_en" COPASIkey="ModelValue_70"/>
    <SBMLMap SBMLid="H_hh" COPASIkey="ModelValue_73"/>
    <SBMLMap SBMLid="H_ptc" COPASIkey="ModelValue_77"/>
    <SBMLMap SBMLid="H_wg" COPASIkey="ModelValue_79"/>
    <SBMLMap SBMLid="IWG_cell_0" COPASIkey="Metabolite_212"/>
    <SBMLMap SBMLid="IWG_cell_1" COPASIkey="Metabolite_213"/>
    <SBMLMap SBMLid="IWG_cell_2" COPASIkey="Metabolite_214"/>
    <SBMLMap SBMLid="IWG_cell_3" COPASIkey="Metabolite_215"/>
    <SBMLMap SBMLid="K_Bcid" COPASIkey="ModelValue_80"/>
    <SBMLMap SBMLid="K_CIDptc" COPASIkey="ModelValue_81"/>
    <SBMLMap SBMLid="K_CIDwg" COPASIkey="ModelValue_82"/>
    <SBMLMap SBMLid="K_CNen" COPASIkey="ModelValue_83"/>
    <SBMLMap SBMLid="K_CNhh" COPASIkey="ModelValue_84"/>
    <SBMLMap SBMLid="K_CNptc" COPASIkey="ModelValue_85"/>
    <SBMLMap SBMLid="K_CNwg" COPASIkey="ModelValue_86"/>
    <SBMLMap SBMLid="K_ENcid" COPASIkey="ModelValue_87"/>
    <SBMLMap SBMLid="K_ENhh" COPASIkey="ModelValue_88"/>
    <SBMLMap SBMLid="K_PTCCID" COPASIkey="ModelValue_90"/>
    <SBMLMap SBMLid="K_PTC_HH" COPASIkey="ModelValue_89"/>
    <SBMLMap SBMLid="K_WGen" COPASIkey="ModelValue_91"/>
    <SBMLMap SBMLid="K_WGwg" COPASIkey="ModelValue_92"/>
    <SBMLMap SBMLid="LMxfer_HH" COPASIkey="ModelValue_93"/>
    <SBMLMap SBMLid="LMxfer_PTC" COPASIkey="ModelValue_94"/>
    <SBMLMap SBMLid="LMxfer_WG" COPASIkey="ModelValue_95"/>
    <SBMLMap SBMLid="Mxfer_WG" COPASIkey="ModelValue_98"/>
    <SBMLMap SBMLid="PH_cell_0_side_0" COPASIkey="Metabolite_216"/>
    <SBMLMap SBMLid="PH_cell_0_side_1" COPASIkey="Metabolite_217"/>
    <SBMLMap SBMLid="PH_cell_0_side_2" COPASIkey="Metabolite_218"/>
    <SBMLMap SBMLid="PH_cell_0_side_3" COPASIkey="Metabolite_219"/>
    <SBMLMap SBMLid="PH_cell_0_side_4" COPASIkey="Metabolite_220"/>
    <SBMLMap SBMLid="PH_cell_0_side_5" COPASIkey="Metabolite_221"/>
    <SBMLMap SBMLid="PH_cell_1_side_0" COPASIkey="Metabolite_222"/>
    <SBMLMap SBMLid="PH_cell_1_side_1" COPASIkey="Metabolite_223"/>
    <SBMLMap SBMLid="PH_cell_1_side_2" COPASIkey="Metabolite_224"/>
    <SBMLMap SBMLid="PH_cell_1_side_3" COPASIkey="Metabolite_225"/>
    <SBMLMap SBMLid="PH_cell_1_side_4" COPASIkey="Metabolite_226"/>
    <SBMLMap SBMLid="PH_cell_1_side_5" COPASIkey="Metabolite_227"/>
    <SBMLMap SBMLid="PH_cell_2_side_0" COPASIkey="Metabolite_228"/>
    <SBMLMap SBMLid="PH_cell_2_side_1" COPASIkey="Metabolite_229"/>
    <SBMLMap SBMLid="PH_cell_2_side_2" COPASIkey="Metabolite_230"/>
    <SBMLMap SBMLid="PH_cell_2_side_3" COPASIkey="Metabolite_231"/>
    <SBMLMap SBMLid="PH_cell_2_side_4" COPASIkey="Metabolite_232"/>
    <SBMLMap SBMLid="PH_cell_2_side_5" COPASIkey="Metabolite_233"/>
    <SBMLMap SBMLid="PH_cell_3_side_0" COPASIkey="Metabolite_234"/>
    <SBMLMap SBMLid="PH_cell_3_side_1" COPASIkey="Metabolite_235"/>
    <SBMLMap SBMLid="PH_cell_3_side_2" COPASIkey="Metabolite_236"/>
    <SBMLMap SBMLid="PH_cell_3_side_3" COPASIkey="Metabolite_237"/>
    <SBMLMap SBMLid="PH_cell_3_side_4" COPASIkey="Metabolite_238"/>
    <SBMLMap SBMLid="PH_cell_3_side_5" COPASIkey="Metabolite_239"/>
    <SBMLMap SBMLid="PTC_cell_0_side_0" COPASIkey="Metabolite_241"/>
    <SBMLMap SBMLid="PTC_cell_0_side_1" COPASIkey="Metabolite_242"/>
    <SBMLMap SBMLid="PTC_cell_0_side_2" COPASIkey="Metabolite_243"/>
    <SBMLMap SBMLid="PTC_cell_0_side_3" COPASIkey="Metabolite_244"/>
    <SBMLMap SBMLid="PTC_cell_0_side_4" COPASIkey="Metabolite_245"/>
    <SBMLMap SBMLid="PTC_cell_0_side_5" COPASIkey="Metabolite_246"/>
    <SBMLMap SBMLid="PTC_cell_1_side_0" COPASIkey="Metabolite_248"/>
    <SBMLMap SBMLid="PTC_cell_1_side_1" COPASIkey="Metabolite_249"/>
    <SBMLMap SBMLid="PTC_cell_1_side_2" COPASIkey="Metabolite_250"/>
    <SBMLMap SBMLid="PTC_cell_1_side_3" COPASIkey="Metabolite_251"/>
    <SBMLMap SBMLid="PTC_cell_1_side_4" COPASIkey="Metabolite_252"/>
    <SBMLMap SBMLid="PTC_cell_1_side_5" COPASIkey="Metabolite_253"/>
    <SBMLMap SBMLid="PTC_cell_2_side_0" COPASIkey="Metabolite_255"/>
    <SBMLMap SBMLid="PTC_cell_2_side_1" COPASIkey="Metabolite_256"/>
    <SBMLMap SBMLid="PTC_cell_2_side_2" COPASIkey="Metabolite_257"/>
    <SBMLMap SBMLid="PTC_cell_2_side_3" COPASIkey="Metabolite_258"/>
    <SBMLMap SBMLid="PTC_cell_2_side_4" COPASIkey="Metabolite_259"/>
    <SBMLMap SBMLid="PTC_cell_2_side_5" COPASIkey="Metabolite_260"/>
    <SBMLMap SBMLid="PTC_cell_3_side_0" COPASIkey="Metabolite_262"/>
    <SBMLMap SBMLid="PTC_cell_3_side_1" COPASIkey="Metabolite_263"/>
    <SBMLMap SBMLid="PTC_cell_3_side_2" COPASIkey="Metabolite_264"/>
    <SBMLMap SBMLid="PTC_cell_3_side_3" COPASIkey="Metabolite_265"/>
    <SBMLMap SBMLid="PTC_cell_3_side_4" COPASIkey="Metabolite_266"/>
    <SBMLMap SBMLid="PTC_cell_3_side_5" COPASIkey="Metabolite_267"/>
    <SBMLMap SBMLid="PTC_tot_cell_0" COPASIkey="ModelValue_114"/>
    <SBMLMap SBMLid="PTC_tot_cell_1" COPASIkey="ModelValue_117"/>
    <SBMLMap SBMLid="PTC_tot_cell_2" COPASIkey="ModelValue_120"/>
    <SBMLMap SBMLid="PTC_tot_cell_3" COPASIkey="ModelValue_123"/>
    <SBMLMap SBMLid="T_0" COPASIkey="ModelValue_111"/>
    <SBMLMap SBMLid="alpha_wg" COPASIkey="ModelValue_62"/>
    <SBMLMap SBMLid="beta_wg" COPASIkey="ModelValue_63"/>
    <SBMLMap SBMLid="cell_0" COPASIkey="Compartment_4"/>
    <SBMLMap SBMLid="cell_1" COPASIkey="Compartment_5"/>
    <SBMLMap SBMLid="cell_2" COPASIkey="Compartment_6"/>
    <SBMLMap SBMLid="cell_3" COPASIkey="Compartment_7"/>
    <SBMLMap SBMLid="cid_cell_0" COPASIkey="Metabolite_140"/>
    <SBMLMap SBMLid="cid_cell_1" COPASIkey="Metabolite_142"/>
    <SBMLMap SBMLid="cid_cell_2" COPASIkey="Metabolite_144"/>
    <SBMLMap SBMLid="cid_cell_3" COPASIkey="Metabolite_146"/>
    <SBMLMap SBMLid="en_cell_0" COPASIkey="Metabolite_152"/>
    <SBMLMap SBMLid="en_cell_1" COPASIkey="Metabolite_154"/>
    <SBMLMap SBMLid="en_cell_2" COPASIkey="Metabolite_156"/>
    <SBMLMap SBMLid="en_cell_3" COPASIkey="Metabolite_158"/>
    <SBMLMap SBMLid="hh_cell_0" COPASIkey="Metabolite_184"/>
    <SBMLMap SBMLid="hh_cell_1" COPASIkey="Metabolite_191"/>
    <SBMLMap SBMLid="hh_cell_2" COPASIkey="Metabolite_198"/>
    <SBMLMap SBMLid="hh_cell_3" COPASIkey="Metabolite_205"/>
    <SBMLMap SBMLid="maxHH" COPASIkey="ModelValue_96"/>
    <SBMLMap SBMLid="maxPTC" COPASIkey="ModelValue_97"/>
    <SBMLMap SBMLid="nu_Bcid" COPASIkey="ModelValue_99"/>
    <SBMLMap SBMLid="nu_CIDptc" COPASIkey="ModelValue_100"/>
    <SBMLMap SBMLid="nu_CIDwg" COPASIkey="ModelValue_101"/>
    <SBMLMap SBMLid="nu_CNen" COPASIkey="ModelValue_102"/>
    <SBMLMap SBMLid="nu_CNhh" COPASIkey="ModelValue_103"/>
    <SBMLMap SBMLid="nu_CNptc" COPASIkey="ModelValue_104"/>
    <SBMLMap SBMLid="nu_CNwg" COPASIkey="ModelValue_105"/>
    <SBMLMap SBMLid="nu_ENcid" COPASIkey="ModelValue_106"/>
    <SBMLMap SBMLid="nu_ENhh" COPASIkey="ModelValue_107"/>
    <SBMLMap SBMLid="nu_PTCCID" COPASIkey="ModelValue_108"/>
    <SBMLMap SBMLid="nu_WGen" COPASIkey="ModelValue_109"/>
    <SBMLMap SBMLid="nu_WGwg" COPASIkey="ModelValue_110"/>
    <SBMLMap SBMLid="phi" COPASIkey="Function_40"/>
    <SBMLMap SBMLid="psi" COPASIkey="Function_41"/>
    <SBMLMap SBMLid="ptc_cell_0" COPASIkey="Metabolite_240"/>
    <SBMLMap SBMLid="ptc_cell_1" COPASIkey="Metabolite_247"/>
    <SBMLMap SBMLid="ptc_cell_2" COPASIkey="Metabolite_254"/>
    <SBMLMap SBMLid="ptc_cell_3" COPASIkey="Metabolite_261"/>
    <SBMLMap SBMLid="wg_cell_0" COPASIkey="Metabolite_268"/>
    <SBMLMap SBMLid="wg_cell_1" COPASIkey="Metabolite_269"/>
    <SBMLMap SBMLid="wg_cell_2" COPASIkey="Metabolite_270"/>
    <SBMLMap SBMLid="wg_cell_3" COPASIkey="Metabolite_271"/>
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
