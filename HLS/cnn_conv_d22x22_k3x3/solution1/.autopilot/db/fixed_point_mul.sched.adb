<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="14">
<syndb class_id="0" tracking_level="0" version="0">
	<userIPLatency>-1</userIPLatency>
	<userIPName></userIPName>
	<cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
		<name>fixed_point_mul</name>
		<ret_bitwidth>23</ret_bitwidth>
		<ports class_id="2" tracking_level="0" version="0">
			<count>2</count>
			<item_version>0</item_version>
			<item class_id="3" tracking_level="1" version="0" object_id="_1">
				<Value class_id="4" tracking_level="0" version="0">
					<Obj class_id="5" tracking_level="0" version="0">
						<type>1</type>
						<id>1</id>
						<name>a</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo class_id="6" tracking_level="0" version="0">
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>a</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs class_id="7" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_2">
				<Value>
					<Obj>
						<type>1</type>
						<id>2</id>
						<name>b</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>b</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
		</ports>
		<nodes class_id="8" tracking_level="0" version="0">
			<count>16</count>
			<item_version>0</item_version>
			<item class_id="9" tracking_level="1" version="0" object_id="_3">
				<Value>
					<Obj>
						<type>0</type>
						<id>3</id>
						<name>b_read</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>b</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>21</item>
					<item>22</item>
				</oprand_edges>
				<opcode>read</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_4">
				<Value>
					<Obj>
						<type>0</type>
						<id>4</id>
						<name>a_read</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>a</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>23</item>
					<item>24</item>
				</oprand_edges>
				<opcode>read</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_5">
				<Value>
					<Obj>
						<type>0</type>
						<id>5</id>
						<name>tmp</name>
						<fileName>cnn_conv_d22x22_k3x3/fixed_point.h</fileName>
						<fileDirectory>D:\School\Project\new_repo\HLS</fileDirectory>
						<lineNumber>59</lineNumber>
						<contextFuncName>fixed_point_mul</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id="11" tracking_level="0" version="0">
								<first>D:\School\Project\new_repo\HLS</first>
								<second class_id="12" tracking_level="0" version="0">
									<count>1</count>
									<item_version>0</item_version>
									<item class_id="13" tracking_level="0" version="0">
										<first class_id="14" tracking_level="0" version="0">
											<first>cnn_conv_d22x22_k3x3/fixed_point.h</first>
											<second>fixed_point_mul</second>
										</first>
										<second>59</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>25</item>
					<item>26</item>
				</oprand_edges>
				<opcode>xor</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_6">
				<Value>
					<Obj>
						<type>0</type>
						<id>6</id>
						<name>tmp_2</name>
						<fileName>cnn_conv_d22x22_k3x3/fixed_point.h</fileName>
						<fileDirectory>D:\School\Project\new_repo\HLS</fileDirectory>
						<lineNumber>61</lineNumber>
						<contextFuncName>fixed_point_mul</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>D:\School\Project\new_repo\HLS</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>cnn_conv_d22x22_k3x3/fixed_point.h</first>
											<second>fixed_point_mul</second>
										</first>
										<second>61</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>1</bitwidth>
				</Value>
				<oprand_edges>
					<count>3</count>
					<item_version>0</item_version>
					<item>28</item>
					<item>29</item>
					<item>31</item>
				</oprand_edges>
				<opcode>bitselect</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_7">
				<Value>
					<Obj>
						<type>0</type>
						<id>7</id>
						<name>tmp_3</name>
						<fileName>cnn_conv_d22x22_k3x3/fixed_point.h</fileName>
						<fileDirectory>D:\School\Project\new_repo\HLS</fileDirectory>
						<lineNumber>61</lineNumber>
						<contextFuncName>fixed_point_mul</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>D:\School\Project\new_repo\HLS</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>cnn_conv_d22x22_k3x3/fixed_point.h</first>
											<second>fixed_point_mul</second>
										</first>
										<second>61</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>33</item>
					<item>34</item>
				</oprand_edges>
				<opcode>sub</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_8">
				<Value>
					<Obj>
						<type>0</type>
						<id>8</id>
						<name>a_assign</name>
						<fileName>cnn_conv_d22x22_k3x3/fixed_point.h</fileName>
						<fileDirectory>D:\School\Project\new_repo\HLS</fileDirectory>
						<lineNumber>61</lineNumber>
						<contextFuncName>fixed_point_mul</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>D:\School\Project\new_repo\HLS</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>cnn_conv_d22x22_k3x3/fixed_point.h</first>
											<second>fixed_point_mul</second>
										</first>
										<second>61</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>a</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>3</count>
					<item_version>0</item_version>
					<item>35</item>
					<item>36</item>
					<item>37</item>
				</oprand_edges>
				<opcode>select</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_9">
				<Value>
					<Obj>
						<type>0</type>
						<id>9</id>
						<name>tmp_4</name>
						<fileName>cnn_conv_d22x22_k3x3/fixed_point.h</fileName>
						<fileDirectory>D:\School\Project\new_repo\HLS</fileDirectory>
						<lineNumber>62</lineNumber>
						<contextFuncName>fixed_point_mul</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>D:\School\Project\new_repo\HLS</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>cnn_conv_d22x22_k3x3/fixed_point.h</first>
											<second>fixed_point_mul</second>
										</first>
										<second>62</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>1</bitwidth>
				</Value>
				<oprand_edges>
					<count>3</count>
					<item_version>0</item_version>
					<item>38</item>
					<item>39</item>
					<item>40</item>
				</oprand_edges>
				<opcode>bitselect</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_10">
				<Value>
					<Obj>
						<type>0</type>
						<id>10</id>
						<name>tmp_5</name>
						<fileName>cnn_conv_d22x22_k3x3/fixed_point.h</fileName>
						<fileDirectory>D:\School\Project\new_repo\HLS</fileDirectory>
						<lineNumber>62</lineNumber>
						<contextFuncName>fixed_point_mul</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>D:\School\Project\new_repo\HLS</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>cnn_conv_d22x22_k3x3/fixed_point.h</first>
											<second>fixed_point_mul</second>
										</first>
										<second>62</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>41</item>
					<item>42</item>
				</oprand_edges>
				<opcode>sub</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_11">
				<Value>
					<Obj>
						<type>0</type>
						<id>11</id>
						<name>b_assign</name>
						<fileName>cnn_conv_d22x22_k3x3/fixed_point.h</fileName>
						<fileDirectory>D:\School\Project\new_repo\HLS</fileDirectory>
						<lineNumber>62</lineNumber>
						<contextFuncName>fixed_point_mul</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>D:\School\Project\new_repo\HLS</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>cnn_conv_d22x22_k3x3/fixed_point.h</first>
											<second>fixed_point_mul</second>
										</first>
										<second>62</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>b</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>3</count>
					<item_version>0</item_version>
					<item>43</item>
					<item>44</item>
					<item>45</item>
				</oprand_edges>
				<opcode>select</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_12">
				<Value>
					<Obj>
						<type>0</type>
						<id>12</id>
						<name>tmp_6</name>
						<fileName>cnn_conv_d22x22_k3x3/fixed_point.h</fileName>
						<fileDirectory>D:\School\Project\new_repo\HLS</fileDirectory>
						<lineNumber>64</lineNumber>
						<contextFuncName>fixed_point_mul</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>D:\School\Project\new_repo\HLS</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>cnn_conv_d22x22_k3x3/fixed_point.h</first>
											<second>fixed_point_mul</second>
										</first>
										<second>64</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>46</item>
					<item>47</item>
				</oprand_edges>
				<opcode>mul</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_13">
				<Value>
					<Obj>
						<type>0</type>
						<id>13</id>
						<name>tmp_1</name>
						<fileName>cnn_conv_d22x22_k3x3/fixed_point.h</fileName>
						<fileDirectory>D:\School\Project\new_repo\HLS</fileDirectory>
						<lineNumber>64</lineNumber>
						<contextFuncName>fixed_point_mul</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>D:\School\Project\new_repo\HLS</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>cnn_conv_d22x22_k3x3/fixed_point.h</first>
											<second>fixed_point_mul</second>
										</first>
										<second>64</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>22</bitwidth>
				</Value>
				<oprand_edges>
					<count>4</count>
					<item_version>0</item_version>
					<item>49</item>
					<item>50</item>
					<item>52</item>
					<item>53</item>
				</oprand_edges>
				<opcode>partselect</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_14">
				<Value>
					<Obj>
						<type>0</type>
						<id>14</id>
						<name>result_cast</name>
						<fileName>cnn_conv_d22x22_k3x3/fixed_point.h</fileName>
						<fileDirectory>D:\School\Project\new_repo\HLS</fileDirectory>
						<lineNumber>64</lineNumber>
						<contextFuncName>fixed_point_mul</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>D:\School\Project\new_repo\HLS</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>cnn_conv_d22x22_k3x3/fixed_point.h</first>
											<second>fixed_point_mul</second>
										</first>
										<second>64</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>23</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>54</item>
				</oprand_edges>
				<opcode>zext</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_15">
				<Value>
					<Obj>
						<type>0</type>
						<id>15</id>
						<name>tmp_7</name>
						<fileName>cnn_conv_d22x22_k3x3/fixed_point.h</fileName>
						<fileDirectory>D:\School\Project\new_repo\HLS</fileDirectory>
						<lineNumber>66</lineNumber>
						<contextFuncName>fixed_point_mul</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>D:\School\Project\new_repo\HLS</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>cnn_conv_d22x22_k3x3/fixed_point.h</first>
											<second>fixed_point_mul</second>
										</first>
										<second>66</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>1</bitwidth>
				</Value>
				<oprand_edges>
					<count>3</count>
					<item_version>0</item_version>
					<item>55</item>
					<item>56</item>
					<item>57</item>
				</oprand_edges>
				<opcode>bitselect</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_16">
				<Value>
					<Obj>
						<type>0</type>
						<id>16</id>
						<name>tmp_8</name>
						<fileName>cnn_conv_d22x22_k3x3/fixed_point.h</fileName>
						<fileDirectory>D:\School\Project\new_repo\HLS</fileDirectory>
						<lineNumber>66</lineNumber>
						<contextFuncName>fixed_point_mul</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>D:\School\Project\new_repo\HLS</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>cnn_conv_d22x22_k3x3/fixed_point.h</first>
											<second>fixed_point_mul</second>
										</first>
										<second>66</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>23</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>59</item>
					<item>60</item>
				</oprand_edges>
				<opcode>sub</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_17">
				<Value>
					<Obj>
						<type>0</type>
						<id>17</id>
						<name>result</name>
						<fileName>cnn_conv_d22x22_k3x3/fixed_point.h</fileName>
						<fileDirectory>D:\School\Project\new_repo\HLS</fileDirectory>
						<lineNumber>66</lineNumber>
						<contextFuncName>fixed_point_mul</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>D:\School\Project\new_repo\HLS</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>cnn_conv_d22x22_k3x3/fixed_point.h</first>
											<second>fixed_point_mul</second>
										</first>
										<second>66</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>result</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>23</bitwidth>
				</Value>
				<oprand_edges>
					<count>3</count>
					<item_version>0</item_version>
					<item>61</item>
					<item>62</item>
					<item>63</item>
				</oprand_edges>
				<opcode>select</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_18">
				<Value>
					<Obj>
						<type>0</type>
						<id>18</id>
						<name></name>
						<fileName>cnn_conv_d22x22_k3x3/fixed_point.h</fileName>
						<fileDirectory>D:\School\Project\new_repo\HLS</fileDirectory>
						<lineNumber>66</lineNumber>
						<contextFuncName>fixed_point_mul</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>D:\School\Project\new_repo\HLS</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>cnn_conv_d22x22_k3x3/fixed_point.h</first>
											<second>fixed_point_mul</second>
										</first>
										<second>66</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>64</item>
				</oprand_edges>
				<opcode>ret</opcode>
				<m_Display>0</m_Display>
			</item>
		</nodes>
		<consts class_id="15" tracking_level="0" version="0">
			<count>4</count>
			<item_version>0</item_version>
			<item class_id="16" tracking_level="1" version="0" object_id="_19">
				<Value>
					<Obj>
						<type>2</type>
						<id>30</id>
						<name>empty</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<const_type>0</const_type>
				<content>31</content>
			</item>
			<item class_id_reference="16" object_id="_20">
				<Value>
					<Obj>
						<type>2</type>
						<id>32</id>
						<name>empty</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<const_type>0</const_type>
				<content>0</content>
			</item>
			<item class_id_reference="16" object_id="_21">
				<Value>
					<Obj>
						<type>2</type>
						<id>51</id>
						<name>empty</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<const_type>0</const_type>
				<content>10</content>
			</item>
			<item class_id_reference="16" object_id="_22">
				<Value>
					<Obj>
						<type>2</type>
						<id>58</id>
						<name>empty</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>23</bitwidth>
				</Value>
				<const_type>0</const_type>
				<content>0</content>
			</item>
		</consts>
		<blocks class_id="17" tracking_level="0" version="0">
			<count>1</count>
			<item_version>0</item_version>
			<item class_id="18" tracking_level="1" version="0" object_id="_23">
				<Obj>
					<type>3</type>
					<id>19</id>
					<name>fixed_point_mul</name>
					<fileName></fileName>
					<fileDirectory></fileDirectory>
					<lineNumber>0</lineNumber>
					<contextFuncName></contextFuncName>
					<inlineStackInfo>
						<count>0</count>
						<item_version>0</item_version>
					</inlineStackInfo>
					<originalName></originalName>
					<rtlName></rtlName>
					<coreName></coreName>
				</Obj>
				<node_objs>
					<count>16</count>
					<item_version>0</item_version>
					<item>3</item>
					<item>4</item>
					<item>5</item>
					<item>6</item>
					<item>7</item>
					<item>8</item>
					<item>9</item>
					<item>10</item>
					<item>11</item>
					<item>12</item>
					<item>13</item>
					<item>14</item>
					<item>15</item>
					<item>16</item>
					<item>17</item>
					<item>18</item>
				</node_objs>
			</item>
		</blocks>
		<edges class_id="19" tracking_level="0" version="0">
			<count>32</count>
			<item_version>0</item_version>
			<item class_id="20" tracking_level="1" version="0" object_id="_24">
				<id>22</id>
				<edge_type>1</edge_type>
				<source_obj>2</source_obj>
				<sink_obj>3</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_25">
				<id>24</id>
				<edge_type>1</edge_type>
				<source_obj>1</source_obj>
				<sink_obj>4</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_26">
				<id>25</id>
				<edge_type>1</edge_type>
				<source_obj>3</source_obj>
				<sink_obj>5</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_27">
				<id>26</id>
				<edge_type>1</edge_type>
				<source_obj>4</source_obj>
				<sink_obj>5</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_28">
				<id>29</id>
				<edge_type>1</edge_type>
				<source_obj>4</source_obj>
				<sink_obj>6</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_29">
				<id>31</id>
				<edge_type>1</edge_type>
				<source_obj>30</source_obj>
				<sink_obj>6</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_30">
				<id>33</id>
				<edge_type>1</edge_type>
				<source_obj>32</source_obj>
				<sink_obj>7</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_31">
				<id>34</id>
				<edge_type>1</edge_type>
				<source_obj>4</source_obj>
				<sink_obj>7</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_32">
				<id>35</id>
				<edge_type>1</edge_type>
				<source_obj>6</source_obj>
				<sink_obj>8</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_33">
				<id>36</id>
				<edge_type>1</edge_type>
				<source_obj>7</source_obj>
				<sink_obj>8</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_34">
				<id>37</id>
				<edge_type>1</edge_type>
				<source_obj>4</source_obj>
				<sink_obj>8</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_35">
				<id>39</id>
				<edge_type>1</edge_type>
				<source_obj>3</source_obj>
				<sink_obj>9</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_36">
				<id>40</id>
				<edge_type>1</edge_type>
				<source_obj>30</source_obj>
				<sink_obj>9</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_37">
				<id>41</id>
				<edge_type>1</edge_type>
				<source_obj>32</source_obj>
				<sink_obj>10</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_38">
				<id>42</id>
				<edge_type>1</edge_type>
				<source_obj>3</source_obj>
				<sink_obj>10</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_39">
				<id>43</id>
				<edge_type>1</edge_type>
				<source_obj>9</source_obj>
				<sink_obj>11</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_40">
				<id>44</id>
				<edge_type>1</edge_type>
				<source_obj>10</source_obj>
				<sink_obj>11</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_41">
				<id>45</id>
				<edge_type>1</edge_type>
				<source_obj>3</source_obj>
				<sink_obj>11</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_42">
				<id>46</id>
				<edge_type>1</edge_type>
				<source_obj>11</source_obj>
				<sink_obj>12</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_43">
				<id>47</id>
				<edge_type>1</edge_type>
				<source_obj>8</source_obj>
				<sink_obj>12</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_44">
				<id>50</id>
				<edge_type>1</edge_type>
				<source_obj>12</source_obj>
				<sink_obj>13</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_45">
				<id>52</id>
				<edge_type>1</edge_type>
				<source_obj>51</source_obj>
				<sink_obj>13</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_46">
				<id>53</id>
				<edge_type>1</edge_type>
				<source_obj>30</source_obj>
				<sink_obj>13</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_47">
				<id>54</id>
				<edge_type>1</edge_type>
				<source_obj>13</source_obj>
				<sink_obj>14</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_48">
				<id>56</id>
				<edge_type>1</edge_type>
				<source_obj>5</source_obj>
				<sink_obj>15</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_49">
				<id>57</id>
				<edge_type>1</edge_type>
				<source_obj>30</source_obj>
				<sink_obj>15</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_50">
				<id>59</id>
				<edge_type>1</edge_type>
				<source_obj>58</source_obj>
				<sink_obj>16</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_51">
				<id>60</id>
				<edge_type>1</edge_type>
				<source_obj>14</source_obj>
				<sink_obj>16</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_52">
				<id>61</id>
				<edge_type>1</edge_type>
				<source_obj>15</source_obj>
				<sink_obj>17</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_53">
				<id>62</id>
				<edge_type>1</edge_type>
				<source_obj>16</source_obj>
				<sink_obj>17</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_54">
				<id>63</id>
				<edge_type>1</edge_type>
				<source_obj>14</source_obj>
				<sink_obj>17</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_55">
				<id>64</id>
				<edge_type>1</edge_type>
				<source_obj>17</source_obj>
				<sink_obj>18</sink_obj>
			</item>
		</edges>
	</cdfg>
	<cdfg_regions class_id="21" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="22" tracking_level="1" version="0" object_id="_56">
			<mId>1</mId>
			<mTag>fixed_point_mul</mTag>
			<mType>0</mType>
			<sub_regions>
				<count>0</count>
				<item_version>0</item_version>
			</sub_regions>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>19</item>
			</basic_blocks>
			<mII>1</mII>
			<mDepth>8</mDepth>
			<mMinTripCount>-1</mMinTripCount>
			<mMaxTripCount>-1</mMaxTripCount>
			<mMinLatency>7</mMinLatency>
			<mMaxLatency>-1</mMaxLatency>
			<mIsDfPipe>0</mIsDfPipe>
			<mDfPipe class_id="-1"></mDfPipe>
		</item>
	</cdfg_regions>
	<fsm class_id="-1"></fsm>
	<res class_id="-1"></res>
	<node_label_latency class_id="26" tracking_level="0" version="0">
		<count>16</count>
		<item_version>0</item_version>
		<item class_id="27" tracking_level="0" version="0">
			<first>3</first>
			<second class_id="28" tracking_level="0" version="0">
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>4</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>5</first>
			<second>
				<first>7</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>6</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>7</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>8</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>9</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>10</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>11</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>12</first>
			<second>
				<first>1</first>
				<second>5</second>
			</second>
		</item>
		<item>
			<first>13</first>
			<second>
				<first>6</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>14</first>
			<second>
				<first>7</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>15</first>
			<second>
				<first>7</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>16</first>
			<second>
				<first>7</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>17</first>
			<second>
				<first>7</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>18</first>
			<second>
				<first>7</first>
				<second>0</second>
			</second>
		</item>
	</node_label_latency>
	<bblk_ent_exit class_id="29" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="30" tracking_level="0" version="0">
			<first>19</first>
			<second class_id="31" tracking_level="0" version="0">
				<first>0</first>
				<second>7</second>
			</second>
		</item>
	</bblk_ent_exit>
	<regions class_id="32" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="33" tracking_level="1" version="0" object_id="_57">
			<region_name>fixed_point_mul</region_name>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>19</item>
			</basic_blocks>
			<nodes>
				<count>0</count>
				<item_version>0</item_version>
			</nodes>
			<anchor_node>-1</anchor_node>
			<region_type>8</region_type>
			<interval>1</interval>
			<pipe_depth>8</pipe_depth>
		</item>
	</regions>
	<dp_fu_nodes class_id="34" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes>
	<dp_fu_nodes_expression class_id="35" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_expression>
	<dp_fu_nodes_module>
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_module>
	<dp_fu_nodes_io>
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_io>
	<return_ports>
		<count>0</count>
		<item_version>0</item_version>
	</return_ports>
	<dp_mem_port_nodes class_id="36" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_mem_port_nodes>
	<dp_reg_nodes>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_nodes>
	<dp_regname_nodes>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_nodes>
	<dp_reg_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_phi>
	<dp_regname_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_phi>
	<dp_port_io_nodes class_id="37" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_port_io_nodes>
	<port2core class_id="38" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</port2core>
	<node2core>
		<count>0</count>
		<item_version>0</item_version>
	</node2core>
</syndb>
</boost_serialization>

