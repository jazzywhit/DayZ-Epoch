// Military Camp Replacement by t.hundero.us

// This will only fit if you have removed debris from your map.
// It will add back in the military camps, as well as minimal road debris.

// Installing This Modification
// 1. Save this code as "recamp.sqf"
// 2. Place the .sqf file inside your mission.pbo file
// 3. Open "init.sqf" and add the following line to the very end -
// [] execVM "recamp.sqf";
 
if (isServer) then {

_vehicle_833 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier_large", [6117.1465, 7923.3149, -0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_833 = _this;
  _this setDir 30.621452;
  _this setPos [6117.1465, 7923.3149, -0.00012207031];
};

_vehicle_1017 = objNull;
if (true) then
{
  _this = createVehicle ["Land_A_FuelStation_Build", [6146.9292, 7731.334, 0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_1017 = _this;
  _this setDir 36.213711;
  _this setPos [6146.9292, 7731.334, 0.00012207031];
};

_vehicle_1079 = objNull;
if (true) then
{
  _this = createVehicle ["Land_A_FuelStation_Feed", [6142.2837, 7729.0884], [], 0, "CAN_COLLIDE"];
  _vehicle_1079 = _this;
  _this setDir -54.903389;
  _this setPos [6142.2837, 7729.0884];
};

_vehicle_1090 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [6140.0044, 7728.1104, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1090 = _this;
  _this setDir 39.069607;
  _this setPos [6140.0044, 7728.1104, 3.0517578e-005];
};

_vehicle_1091 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [6141.2666, 7733.3198], [], 0, "CAN_COLLIDE"];
  _vehicle_1091 = _this;
  _this setDir 121.52349;
  _this setPos [6141.2666, 7733.3198];
};

_vehicle_1092 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [6143.3032, 7736.6924, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1092 = _this;
  _this setDir 119.77445;
  _this setPos [6143.3032, 7736.6924, -3.0517578e-005];
};

_vehicle_1093 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [6145.9556, 7737.3701], [], 0, "CAN_COLLIDE"];
  _vehicle_1093 = _this;
  _this setDir -147.64183;
  _this setPos [6145.9556, 7737.3701];
};

_vehicle_1094 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [6149.3115, 7735.1919], [], 0, "CAN_COLLIDE"];
  _vehicle_1094 = _this;
  _this setDir -147.7981;
  _this setPos [6149.3115, 7735.1919];
};

_vehicle_1095 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [6152.6279, 7732.9829, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1095 = _this;
  _this setDir 214.21715;
  _this setPos [6152.6279, 7732.9829, -3.0517578e-005];
};

_vehicle_1096 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [6153.1924, 7730.2222, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1096 = _this;
  _this setDir -57.399876;
  _this setPos [6153.1924, 7730.2222, -3.0517578e-005];
};

_vehicle_1098 = objNull;
if (true) then
{
  _this = createVehicle ["Barrel4", [6149.4556, 7727.8521, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1098 = _this;
  _this setPos [6149.4556, 7727.8521, 3.0517578e-005];
};

_vehicle_1099 = objNull;
if (true) then
{
  _this = createVehicle ["Garbage_container", [6150.6489, 7728.2495], [], 0, "CAN_COLLIDE"];
  _vehicle_1099 = _this;
  _this setDir -139.94484;
  _this setPos [6150.6489, 7728.2495];
};

_vehicle_1100 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [6139.665, 7730.959, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1100 = _this;
  _this setDir 126.91673;
  _this setPos [6139.665, 7730.959, -3.0517578e-005];
};

_vehicle_1125 = objNull;
if (true) then
{
  _this = createVehicle ["UralWreck", [5173.2212, 8598.8311], [], 0, "CAN_COLLIDE"];
  _vehicle_1125 = _this;
  _this setDir 200.89397;
  _this setPos [5173.2212, 8598.8311];
};

_vehicle_1128 = objNull;
if (true) then
{
  _this = createVehicle ["Land_repair_center", [6955.1245, 7769.1748, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1128 = _this;
  _this setDir -31.241611;
  _this setPos [6955.1245, 7769.1748, -6.1035156e-005];
};

_vehicle_1129 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Cargo1Bo", [5455.8125, 8463.4072], [], 0, "CAN_COLLIDE"];
  _vehicle_1129 = _this;
  _this setDir 38.979519;
  _this setPos [5455.8125, 8463.4072];
};

_vehicle_1130 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fortified_nest_small", [5448.0732, 8457.2725, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1130 = _this;
  _this setDir -22.572523;
  _this setPos [5448.0732, 8457.2725, 3.0517578e-005];
};

_vehicle_1134 = objNull;
if (true) then
{
  _this = createVehicle ["RoadBarrier_long", [5245.3848, 8624.1484], [], 0, "CAN_COLLIDE"];
  _vehicle_1134 = _this;
  _this setDir 77.59008;
  _this setPos [5245.3848, 8624.1484];
};

_vehicle_1135 = objNull;
if (true) then
{
  _this = createVehicle ["RoadBarrier_long", [5345.6523, 8576.8496], [], 0, "CAN_COLLIDE"];
  _vehicle_1135 = _this;
  _this setDir -34.385853;
  _this setPos [5345.6523, 8576.8496];
};

_vehicle_1136 = objNull;
if (true) then
{
  _this = createVehicle ["datsun01Wreck", [5389.2104, 8561.1914, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1136 = _this;
  _this setPos [5389.2104, 8561.1914, -3.0517578e-005];
};

_vehicle_1137 = objNull;
if (true) then
{
  _this = createVehicle ["UralWreck", [5476.1465, 8414.1963, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1137 = _this;
  _this setDir -168.11044;
  _this setPos [5476.1465, 8414.1963, 3.0517578e-005];
};

_vehicle_1138 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_Stripes", [5465.7954, 8556.3311, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1138 = _this;
  _this setDir 41.145226;
  _this setPos [5465.7954, 8556.3311, 6.1035156e-005];
};

_vehicle_1139 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Pneu", [5476.0332, 8407.8398], [], 0, "CAN_COLLIDE"];
  _vehicle_1139 = _this;
  _this setPos [5476.0332, 8407.8398];
};

_vehicle_1140 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_TyreHeapEP1", [5469.0054, 8554.9854, 0.00018310547], [], 0, "CAN_COLLIDE"];
  _vehicle_1140 = _this;
  _this setPos [5469.0054, 8554.9854, 0.00018310547];
};

_vehicle_1141 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Pneu", [5467.4326, 8557.4033, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1141 = _this;
  _this setPos [5467.4326, 8557.4033, 6.1035156e-005];
};

_vehicle_1142 = objNull;
if (true) then
{
  _this = createVehicle ["UAZWreck", [5351.6895, 8572.6865, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1142 = _this;
  _this setPos [5351.6895, 8572.6865, 6.1035156e-005];
};

_vehicle_1143 = objNull;
if (true) then
{
  _this = createVehicle ["SKODAWreck", [5310.0146, 8613.5684, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1143 = _this;
  _this setDir -80.300255;
  _this setPos [5310.0146, 8613.5684, 6.1035156e-005];
};

_vehicle_1144 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [5313.6348, 8610.0479], [], 0, "CAN_COLLIDE"];
  _vehicle_1144 = _this;
  _this setDir -7.6444712;
  _this setPos [5313.6348, 8610.0479];
};

_vehicle_1147 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_IronPipes_EP1", [5950.6641, 7961.5938], [], 0, "CAN_COLLIDE"];
  _vehicle_1147 = _this;
  _this setPos [5950.6641, 7961.5938];
};

_vehicle_1148 = objNull;
if (true) then
{
  _this = createVehicle ["Paleta2", [5963.4663, 7907.9419], [], 0, "CAN_COLLIDE"];
  _vehicle_1148 = _this;
  _this setDir -0.59418416;
  _this setPos [5963.4663, 7907.9419];
};

_vehicle_1149 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Pneu", [5969.7422, 7900.5361], [], 0, "CAN_COLLIDE"];
  _vehicle_1149 = _this;
  _this setPos [5969.7422, 7900.5361];
};

_vehicle_1150 = objNull;
if (true) then
{
  _this = createVehicle ["hiluxWreck", [5965.8579, 7902.687], [], 0, "CAN_COLLIDE"];
  _vehicle_1150 = _this;
  _this setPos [5965.8579, 7902.687];
};

_vehicle_1151 = objNull;
if (true) then
{
  _this = createVehicle ["SKODAWreck", [6030.5791, 7827.395, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1151 = _this;
  _this setPos [6030.5791, 7827.395, 3.0517578e-005];
};

_vehicle_1152 = objNull;
if (true) then
{
  _this = createVehicle ["datsun01Wreck", [6063.5718, 7761.6274, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1152 = _this;
  _this setDir -35.667191;
  _this setPos [6063.5718, 7761.6274, 3.0517578e-005];
};

_vehicle_1156 = objNull;
if (true) then
{
  _this = createVehicle ["RoadBarrier_light", [6066.625, 7764.5889], [], 0, "CAN_COLLIDE"];
  _vehicle_1156 = _this;
  _this setDir 21.9765;
  _this setPos [6066.625, 7764.5889];
};

_vehicle_1157 = objNull;
if (true) then
{
  _this = createVehicle ["datsun02Wreck", [6215.1421, 7670.0918], [], 0, "CAN_COLLIDE"];
  _vehicle_1157 = _this;
  _this setDir -180.73836;
  _this setPos [6215.1421, 7670.0918];
};

_vehicle_1158 = objNull;
if (true) then
{
  _this = createVehicle ["LADAWreck", [6282.271, 7597.7871], [], 0, "CAN_COLLIDE"];
  _vehicle_1158 = _this;
  _this setDir -64.968102;
  _this setPos [6282.271, 7597.7871];
};

_vehicle_1159 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [6282.396, 7595.0146], [], 0, "CAN_COLLIDE"];
  _vehicle_1159 = _this;
  _this setDir -9.313076;
  _this setPos [6282.396, 7595.0146];
};

_vehicle_1162 = objNull;
if (true) then
{
  _this = createVehicle ["SKODAWreck", [6325.0874, 7554.9141, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1162 = _this;
  _this setDir -2.4953511;
  _this setPos [6325.0874, 7554.9141, 3.0517578e-005];
};

_vehicle_1164 = objNull;
if (true) then
{
  _this = createVehicle ["Land_BagFenceLong", [6162.1992, 7697.7368, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1164 = _this;
  _this setDir -141.20148;
  _this setPos [6162.1992, 7697.7368, -3.0517578e-005];
};

_vehicle_1165 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_Stripes", [6165.4707, 7700.0957], [], 0, "CAN_COLLIDE"];
  _vehicle_1165 = _this;
  _this setDir 147.52419;
  _this setPos [6165.4707, 7700.0957];
};

_vehicle_1166 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Garb_Heap_EP1", [6167.5986, 7695.9458, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1166 = _this;
  _this setPos [6167.5986, 7695.9458, 3.0517578e-005];
};

_vehicle_1167 = objNull;
if (true) then
{
  _this = createVehicle ["Paleta2", [6161.2466, 7702.0103, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1167 = _this;
  _this setDir -120.81055;
  _this setPos [6161.2466, 7702.0103, 6.1035156e-005];
};

_vehicle_1168 = objNull;
if (true) then
{
  _this = createVehicle ["Paleta2", [7030.249, 7671.9409], [], 0, "CAN_COLLIDE"];
  _vehicle_1168 = _this;
  _this setPos [7030.249, 7671.9409];
};

_vehicle_1171 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Pneu", [6976.8394, 7656.5405], [], 0, "CAN_COLLIDE"];
  _vehicle_1171 = _this;
  _this setPos [6976.8394, 7656.5405];
};

_vehicle_1172 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [6993.5288, 7659.2222, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1172 = _this;
  _this setDir 69.463211;
  _this setPos [6993.5288, 7659.2222, -6.1035156e-005];
};

_vehicle_1173 = objNull;
if (true) then
{
  _this = createVehicle ["hiluxWreck", [6983.478, 7659.4961], [], 0, "CAN_COLLIDE"];
  _vehicle_1173 = _this;
  _this setDir -151.36368;
  _this setPos [6983.478, 7659.4961];
};

_vehicle_1174 = objNull;
if (true) then
{
  _this = createVehicle ["datsun01Wreck", [7113.1138, 7621.1792, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1174 = _this;
  _this setDir -170.56467;
  _this setPos [7113.1138, 7621.1792, -3.0517578e-005];
};

_vehicle_1175 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_Stripes", [7086.1807, 7655.147], [], 0, "CAN_COLLIDE"];
  _vehicle_1175 = _this;
  _this setDir -34.676418;
  _this setPos [7086.1807, 7655.147];
};

_vehicle_1176 = objNull;
if (true) then
{
  _this = createVehicle ["Barrel1", [7087.8066, 7654.6431, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1176 = _this;
  _this setPos [7087.8066, 7654.6431, -3.0517578e-005];
};

_vehicle_1177 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_corner", [7091.8828, 7654.0596], [], 0, "CAN_COLLIDE"];
  _vehicle_1177 = _this;
  _this setDir -43.886024;
  _this setPos [7091.8828, 7654.0596];
};

_vehicle_1178 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrates_NoInteractive_Large", [7090.4985, 7658.8853, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1178 = _this;
  _this setPos [7090.4985, 7658.8853, 3.0517578e-005];
};

_vehicle_1180 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [7124.2725, 7698.3066, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1180 = _this;
  _this setDir 47.680698;
  _this setPos [7124.2725, 7698.3066, -3.0517578e-005];
};

_vehicle_1181 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Garb_Heap_EP1", [7128.2979, 7699.0396, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1181 = _this;
  _this setPos [7128.2979, 7699.0396, -3.0517578e-005];
};

_vehicle_1182 = objNull;
if (true) then
{
  _this = createVehicle ["HMMWVWreck", [7254.8701, 7669.8481, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1182 = _this;
  _this setDir 50.260166;
  _this setPos [7254.8701, 7669.8481, -3.0517578e-005];
};

_vehicle_1183 = objNull;
if (true) then
{
  _this = createVehicle ["hiluxWreck", [7248.3076, 7667.3975, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1183 = _this;
  _this setDir -58.502628;
  _this setPos [7248.3076, 7667.3975, -3.0517578e-005];
};

_vehicle_1184 = objNull;
if (true) then
{
  _this = createVehicle ["UralWreck", [7021.8057, 7722.48, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1184 = _this;
  _this setDir -66.60862;
  _this setPos [7021.8057, 7722.48, -3.0517578e-005];
};

_vehicle_1185 = objNull;
if (true) then
{
  _this = createVehicle ["hiluxWreck", [6948.4019, 7813.5137, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1185 = _this;
  _this setPos [6948.4019, 7813.5137, -3.0517578e-005];
};

_vehicle_1186 = objNull;
if (true) then
{
  _this = createVehicle ["hiluxWreck", [6728.4531, 2983.8159, 1.1920929e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1186 = _this;
  _this setDir 11.611994;
  _this setPos [6728.4531, 2983.8159, 1.1920929e-005];
};

_vehicle_1187 = objNull;
if (true) then
{
  _this = createVehicle ["SKODAWreck", [6651.5313, 2940.8918, -2.0027161e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1187 = _this;
  _this setPos [6651.5313, 2940.8918, -2.0027161e-005];
};

_vehicle_1188 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [6602.8369, 2889.8181, 1.2874603e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1188 = _this;
  _this setDir -49.782375;
  _this setPos [6602.8369, 2889.8181, 1.2874603e-005];
};

_vehicle_1189 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_Stripes", [6604.8301, 2892.2693, -2.1934509e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1189 = _this;
  _this setDir -40.711311;
  _this setPos [6604.8301, 2892.2693, -2.1934509e-005];
};

_vehicle_1191 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_ConcPipeline_EP1", [6547.6787, 2854.3784, -7.1525574e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1191 = _this;
  _this setDir -58.755066;
  _this setPos [6547.6787, 2854.3784, -7.1525574e-006];
};

_vehicle_1192 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Garb_Heap_EP1", [6558.5469, 2852.5193, 2.8610229e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1192 = _this;
  _this setPos [6558.5469, 2852.5193, 2.8610229e-006];
};

_vehicle_1194 = objNull;
if (true) then
{
  _this = createVehicle ["Paleta1", [6561.5195, 2858.0051, -1.9073486e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1194 = _this;
  _this setPos [6561.5195, 2858.0051, -1.9073486e-006];
};

_vehicle_1195 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_IronPipes_EP1", [6428.3955, 2716.3455, 2.3841858e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1195 = _this;
  _this setDir -79.912529;
  _this setPos [6428.3955, 2716.3455, 2.3841858e-006];
};

_vehicle_1196 = objNull;
if (true) then
{
  _this = createVehicle ["Land_bags_stack_EP1", [6431.0581, 2717.3875, -1.2397766e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1196 = _this;
  _this setDir -55.664314;
  _this setPos [6431.0581, 2717.3875, -1.2397766e-005];
};

_vehicle_1197 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1Bo_civil", [6471.938, 2760.5735, 2.2888184e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1197 = _this;
  _this setDir -34.603912;
  _this setPos [6471.938, 2760.5735, 2.2888184e-005];
};

_vehicle_1200 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [6322.6655, 2600.9492, 5.7220459e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1200 = _this;
  _this setDir -19.249269;
  _this setPos [6322.6655, 2600.9492, 5.7220459e-006];
};

_vehicle_1203 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_Stripes", [6353.0107, 2500.9739, -1.1920929e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1203 = _this;
  _this setPos [6353.0107, 2500.9739, -1.1920929e-005];
};

_vehicle_1204 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [6356.2319, 2499.8953, -3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1204 = _this;
  _this setDir 33.173336;
  _this setPos [6356.2319, 2499.8953, -3.8146973e-006];
};

_vehicle_1207 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Garb_Heap_EP1", [6395.8384, 2526.3013, -1.4305115e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1207 = _this;
  _this setPos [6395.8384, 2526.3013, -1.4305115e-006];
};

_vehicle_1209 = objNull;
if (true) then
{
  _this = createVehicle ["hiluxWreck", [6356.0024, 2546.158, 5.2452087e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1209 = _this;
  _this setDir -135.23682;
  _this setPos [6356.0024, 2546.158, 5.2452087e-006];
};

_vehicle_1210 = objNull;
if (true) then
{
  _this = createVehicle ["UralWreck", [6364.3086, 2630.9382, 1.5735626e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1210 = _this;
  _this setDir 74.538025;
  _this setPos [6364.3086, 2630.9382, 1.5735626e-005];
};

_vehicle_1211 = objNull;
if (true) then
{
  _this = createVehicle ["UAZWreck", [6399.0796, 2662.3115, 8.5830688e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1211 = _this;
  _this setDir -8.8538084;
  _this setPos [6399.0796, 2662.3115, 8.5830688e-006];
};

_vehicle_1212 = objNull;
if (true) then
{
  _this = createVehicle ["SKODAWreck", [6351.9019, 2508.9521, 5.7220459e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1212 = _this;
  _this setDir 30.938431;
  _this setPos [6351.9019, 2508.9521, 5.7220459e-005];
};

_vehicle_1213 = objNull;
if (true) then
{
  _this = createVehicle ["SKODAWreck", [6351.2158, 2430.24, -9.5367432e-007], [], 0, "CAN_COLLIDE"];
  _vehicle_1213 = _this;
  _this setPos [6351.2158, 2430.24, -9.5367432e-007];
};

_vehicle_1216 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Garb_Heap_EP1", [6675.9722, 2792.0386, -1.9073486e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1216 = _this;
  _this setPos [6675.9722, 2792.0386, -1.9073486e-006];
};

_vehicle_1217 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Garb_Heap_EP1", [6672.5654, 2752.3125], [], 0, "CAN_COLLIDE"];
  _vehicle_1217 = _this;
  _this setPos [6672.5654, 2752.3125];
};

_vehicle_1218 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_Stripes", [6669.7466, 2752.407, -1.335144e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1218 = _this;
  _this setDir 22.991377;
  _this setPos [6669.7466, 2752.407, -1.335144e-005];
};

_vehicle_1219 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [9626.1709, 2026.1252, -3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1219 = _this;
  _this setDir 79.360001;
  _this setPos [9626.1709, 2026.1252, -3.8146973e-006];
};

_vehicle_1220 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [9614.2432, 2025.8678, -2.8610229e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1220 = _this;
  _this setDir 50.168568;
  _this setPos [9614.2432, 2025.8678, -2.8610229e-006];
};

_vehicle_1221 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Garb_Heap_EP1", [9621.7451, 2023.9767, -1.2874603e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1221 = _this;
  _this setDir -79.85022;
  _this setPos [9621.7451, 2023.9767, -1.2874603e-005];
};

_vehicle_1222 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Pneu", [9536.3916, 2034.5309, -2.1457672e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1222 = _this;
  _this setPos [9536.3916, 2034.5309, -2.1457672e-005];
};

_vehicle_1223 = objNull;
if (true) then
{
  _this = createVehicle ["hiluxWreck", [9541.6797, 2034.0923, -2.0503998e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1223 = _this;
  _this setDir 136.04745;
  _this setPos [9541.6797, 2034.0923, -2.0503998e-005];
};

_vehicle_1224 = objNull;
if (true) then
{
  _this = createVehicle ["UralWreck", [9829.0469, 2033.8055, -1.9073486e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1224 = _this;
  _this setDir 218.59363;
  _this setPos [9829.0469, 2033.8055, -1.9073486e-006];
};

_vehicle_1225 = objNull;
if (true) then
{
  _this = createVehicle ["SKODAWreck", [10239.715, 2137.6582, -1.4305115e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1225 = _this;
  _this setDir -152.68242;
  _this setPos [10239.715, 2137.6582, -1.4305115e-006];
};

_vehicle_1227 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [10259.687, 2141.0842, -9.5367432e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1227 = _this;
  _this setDir 70.531654;
  _this setPos [10259.687, 2141.0842, -9.5367432e-006];
};

_vehicle_1228 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_Stripes", [10258.579, 2134.8872, -7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1228 = _this;
  _this setDir 97.518387;
  _this setPos [10258.579, 2134.8872, -7.6293945e-006];
};

_vehicle_1229 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_Stripes", [10193.492, 2123.8091], [], 0, "CAN_COLLIDE"];
  _vehicle_1229 = _this;
  _this setDir 111.40406;
  _this setPos [10193.492, 2123.8091];
};

_vehicle_1230 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Garb_Heap_EP1", [10189.962, 2124.168, -1.4305115e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1230 = _this;
  _this setPos [10189.962, 2124.168, -1.4305115e-006];
};

_vehicle_1231 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Garb_Heap_EP1", [10303.257, 2153.8391, -1.1920929e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1231 = _this;
  _this setPos [10303.257, 2153.8391, -1.1920929e-005];
};

_vehicle_1232 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Garb_Heap_EP1", [10392.057, 2218.6179, -6.6757202e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1232 = _this;
  _this setPos [10392.057, 2218.6179, -6.6757202e-006];
};

_vehicle_1233 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_IronPipes_EP1", [10388.604, 2216.1736, 4.3392181e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1233 = _this;
  _this setPos [10388.604, 2216.1736, 4.3392181e-005];
};

_vehicle_1234 = objNull;
if (true) then
{
  _this = createVehicle ["UAZWreck", [10397.424, 2239.064, 3.3378601e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1234 = _this;
  _this setDir -175.34055;
  _this setPos [10397.424, 2239.064, 3.3378601e-006];
};

_vehicle_1235 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fortified_nest_small", [10269.76, 2138.3511, -2.3365021e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1235 = _this;
  _this setDir 76.610779;
  _this setPos [10269.76, 2138.3511, -2.3365021e-005];
};

_vehicle_1237 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [10267.518, 2141.6091, -1.3828278e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1237 = _this;
  _this setDir -104.348;
  _this setPos [10267.518, 2141.6091, -1.3828278e-005];
};

_vehicle_1238 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_corner", [10267.217, 2144.8198, -3.1471252e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1238 = _this;
  _this setDir 74.287979;
  _this setPos [10267.217, 2144.8198, -3.1471252e-005];
};

_vehicle_1239 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_corner", [10251.344, 2127.1091, -4.7683716e-007], [], 0, "CAN_COLLIDE"];
  _vehicle_1239 = _this;
  _this setDir 73.419548;
  _this setPos [10251.344, 2127.1091, -4.7683716e-007];
};

_vehicle_1240 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrates_NoInteractive_Medium", [10269.22, 2144.2231, 4.2915344e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1240 = _this;
  _this setPos [10269.22, 2144.2231, 4.2915344e-005];
};

_vehicle_1246 = objNull;
if (true) then
{
  _this = createVehicle ["hiluxWreck", [10153.943, 2104.5039, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1246 = _this;
  _this setDir -87.16674;
  _this setPos [10153.943, 2104.5039, 3.8146973e-006];
};

_vehicle_1247 = objNull;
if (true) then
{
  _this = createVehicle ["LADAWreck", [10011.958, 2072.1758, -1.0490417e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1247 = _this;
  _this setDir 105.31418;
  _this setPos [10011.958, 2072.1758, -1.0490417e-005];
};

_vehicle_1248 = objNull;
if (true) then
{
  _this = createVehicle ["RoadBarrier_long", [10111.422, 2093.2524, 2.3841858e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1248 = _this;
  _this setDir 41.48473;
  _this setPos [10111.422, 2093.2524, 2.3841858e-006];
};

_vehicle_1249 = objNull;
if (true) then
{
  _this = createVehicle ["HMMWVWreck", [10366.684, 2176.469, 2.8610229e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1249 = _this;
  _this setDir -96.190056;
  _this setPos [10366.684, 2176.469, 2.8610229e-006];
};

_vehicle_1250 = objNull;
if (true) then
{
  _this = createVehicle ["UralWreck", [10474.215, 2320.3884, 6.6757202e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1250 = _this;
  _this setDir -1.1941726;
  _this setPos [10474.215, 2320.3884, 6.6757202e-006];
};

_vehicle_1251 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [10477.297, 2315.7463, 4.7683716e-007], [], 0, "CAN_COLLIDE"];
  _vehicle_1251 = _this;
  _this setDir -7.6444416;
  _this setPos [10477.297, 2315.7463, 4.7683716e-007];
};

_vehicle_1254 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Garb_Heap_EP1", [10490.238, 2380.7861, -4.2915344e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1254 = _this;
  _this setPos [10490.238, 2380.7861, -4.2915344e-006];
};

_vehicle_1255 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Pneu", [10491.506, 2310.4451, -6.4849854e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1255 = _this;
  _this setPos [10491.506, 2310.4451, -6.4849854e-005];
};

_vehicle_1256 = objNull;
if (true) then
{
  _this = createVehicle ["Land_transport_crates_EP1", [10490.341, 2306.8843, -1.6212463e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1256 = _this;
  _this setPos [10490.341, 2306.8843, -1.6212463e-005];
};

_vehicle_1257 = objNull;
if (true) then
{
  _this = createVehicle ["Paleta1", [10488.675, 2308.845, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1257 = _this;
  _this setDir -46.642479;
  _this setPos [10488.675, 2308.845, 3.8146973e-006];
};

_vehicle_1258 = objNull;
if (true) then
{
  _this = createVehicle ["Paleta2", [10468.814, 2304.4541, -4.7683716e-007], [], 0, "CAN_COLLIDE"];
  _vehicle_1258 = _this;
  _this setPos [10468.814, 2304.4541, -4.7683716e-007];
};

_vehicle_1260 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [10467.666, 2303.5813, 3.194809e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1260 = _this;
  _this setDir 38.154495;
  _this setPos [10467.666, 2303.5813, 3.194809e-005];
};

_vehicle_1263 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fortified_nest_small", [10458.709, 2282.1836, 5.9604645e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1263 = _this;
  _this setDir 145.99356;
  _this setPos [10458.709, 2282.1836, 5.9604645e-005];
};

_vehicle_1264 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [10453.94, 2283.9341, 4.2915344e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1264 = _this;
  _this setDir 54.295383;
  _this setPos [10453.94, 2283.9341, 4.2915344e-006];
};

_vehicle_1265 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_corner", [10453.065, 2286.2161, 1.9073486e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1265 = _this;
  _this setDir 53.520039;
  _this setPos [10453.065, 2286.2161, 1.9073486e-006];
};

_vehicle_1266 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [10451.335, 2284.3669, -3.3378601e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1266 = _this;
  _this setDir 67.131798;
  _this setPos [10451.335, 2284.3669, -3.3378601e-005];
};

_vehicle_1267 = objNull;
if (true) then
{
  _this = createVehicle ["hiluxWreck", [10511.692, 2339.7869, 1.9073486e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1267 = _this;
  _this setDir 80.518013;
  _this setPos [10511.692, 2339.7869, 1.9073486e-006];
};

_vehicle_1268 = objNull;
if (true) then
{
  _this = createVehicle ["UAZWreck", [10498.676, 2284.7004, 1.1444092e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1268 = _this;
  _this setPos [10498.676, 2284.7004, 1.1444092e-005];
};

_vehicle_1269 = objNull;
if (true) then
{
  _this = createVehicle ["UAZWreck", [10576.636, 2294.437, 6.9141388e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1269 = _this;
  _this setDir 7.9927902;
  _this setPos [10576.636, 2294.437, 6.9141388e-005];
};

_vehicle_1270 = objNull;
if (true) then
{
  _this = createVehicle ["SKODAWreck", [10622.042, 2322.2283, 4.7683716e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1270 = _this;
  _this setPos [10622.042, 2322.2283, 4.7683716e-006];
};

_vehicle_1271 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [10621.643, 2325.9421, -4.7683716e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1271 = _this;
  _this setPos [10621.643, 2325.9421, -4.7683716e-006];
};

_vehicle_1272 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Garb_Heap_EP1", [10594.499, 2368.2256], [], 0, "CAN_COLLIDE"];
  _vehicle_1272 = _this;
  _this setPos [10594.499, 2368.2256];
};

_vehicle_1273 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_GContainer_Big", [10431.641, 2155.2292, -3.3378601e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1273 = _this;
  _this setDir 61.736279;
  _this setPos [10431.641, 2155.2292, -3.3378601e-005];
};

_vehicle_1274 = objNull;
if (true) then
{
  _this = createVehicle ["Paleta2", [10428.641, 2159.5706, 4.7683716e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1274 = _this;
  _this setPos [10428.641, 2159.5706, 4.7683716e-006];
};

_vehicle_1275 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_IronPipes_EP1", [10382.059, 2080.7488, 9.5367432e-007], [], 0, "CAN_COLLIDE"];
  _vehicle_1275 = _this;
  _this setDir 55.966663;
  _this setPos [10382.059, 2080.7488, 9.5367432e-007];
};

_vehicle_1276 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_Stripes", [10379.717, 2077.512, 1.9073486e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1276 = _this;
  _this setDir 89.716499;
  _this setPos [10379.717, 2077.512, 1.9073486e-006];
};

_vehicle_1277 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Garb_Heap_EP1", [10427.872, 2096.884, 2.8610229e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1277 = _this;
  _this setPos [10427.872, 2096.884, 2.8610229e-006];
};

_vehicle_1278 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Pneu", [10503.9, 2132.7781, 1.9073486e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1278 = _this;
  _this setPos [10503.9, 2132.7781, 1.9073486e-006];
};

_vehicle_1280 = objNull;
if (true) then
{
  _this = createVehicle ["datsun01Wreck", [10510.641, 2138.8044, 5.7220459e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1280 = _this;
  _this setDir 26.247665;
  _this setPos [10510.641, 2138.8044, 5.7220459e-006];
};

_vehicle_1281 = objNull;
if (true) then
{
  _this = createVehicle ["UAZWreck", [10506.698, 2135.2498, 5.2452087e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1281 = _this;
  _this setDir -88.602539;
  _this setPos [10506.698, 2135.2498, 5.2452087e-006];
};

_vehicle_1282 = objNull;
if (true) then
{
  _this = createVehicle ["UAZWreck", [10557.82, 2122.1296, -1.9073486e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1282 = _this;
  _this setPos [10557.82, 2122.1296, -1.9073486e-006];
};

_vehicle_1283 = objNull;
if (true) then
{
  _this = createVehicle ["UralWreck", [10485.396, 2224.6826], [], 0, "CAN_COLLIDE"];
  _vehicle_1283 = _this;
  _this setDir 35.868004;
  _this setPos [10485.396, 2224.6826];
};

_vehicle_1284 = objNull;
if (true) then
{
  _this = createVehicle ["UralWreck", [10677.638, 2443.2913, -8.5830688e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1284 = _this;
  _this setPos [10677.638, 2443.2913, -8.5830688e-006];
};

_vehicle_1286 = objNull;
if (true) then
{
  _this = createVehicle ["hiluxWreck", [10600.545, 2399.5027, 0.00010728836], [], 0, "CAN_COLLIDE"];
  _vehicle_1286 = _this;
  _this setDir 199.68489;
  _this setPos [10600.545, 2399.5027, 0.00010728836];
};

_vehicle_1288 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Coil_EP1", [10562.711, 2386.4846, 5.7220459e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1288 = _this;
  _this setPos [10562.711, 2386.4846, 5.7220459e-006];
};

_vehicle_1289 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [10566.615, 2387.2722, -6.1988831e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1289 = _this;
  _this setDir 69.568901;
  _this setPos [10566.615, 2387.2722, -6.1988831e-006];
};

_vehicle_1290 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [10272.508, 2484.7361, 1.9073486e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1290 = _this;
  _this setDir 134.11232;
  _this setPos [10272.508, 2484.7361, 1.9073486e-005];
};

_vehicle_1291 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [8119.498, 3143.198, 1.0967255e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1291 = _this;
  _this setPos [8119.498, 3143.198, 1.0967255e-005];
};

_vehicle_1292 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [8117.4717, 3136.2019, 5.7220459e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1292 = _this;
  _this setDir -89.463112;
  _this setPos [8117.4717, 3136.2019, 5.7220459e-006];
};

_vehicle_1295 = objNull;
if (true) then
{
  _this = createVehicle ["datsun01Wreck", [8121.6558, 3139.8726, -8.1062317e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1295 = _this;
  _this setDir 66.389496;
  _this setPos [8121.6558, 3139.8726, -8.1062317e-006];
};

_vehicle_1296 = objNull;
if (true) then
{
  _this = createVehicle ["datsun01Wreck", [7328.6592, 2749.6189, -1.4781952e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1296 = _this;
  _this setPos [7328.6592, 2749.6189, -1.4781952e-005];
};

_vehicle_1298 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [7279.0625, 2677.5439, 1.0490417e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1298 = _this;
  _this setDir 15.799998;
  _this setPos [7279.0625, 2677.5439, 1.0490417e-005];
};

_vehicle_1299 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_ConcPipeline_EP1", [7278.6797, 2672.1797, 1.3828278e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1299 = _this;
  _this setDir -19.826046;
  _this setPos [7278.6797, 2672.1797, 1.3828278e-005];
};

_vehicle_1300 = objNull;
if (true) then
{
  _this = createVehicle ["UAZWreck", [7246.0732, 2628.0771, 3.3378601e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1300 = _this;
  _this setPos [7246.0732, 2628.0771, 3.3378601e-006];
};

_vehicle_1301 = objNull;
if (true) then
{
  _this = createVehicle ["UAZWreck", [7180.9023, 2554.1265, -1.4305115e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1301 = _this;
  _this setDir 88.188934;
  _this setPos [7180.9023, 2554.1265, -1.4305115e-005];
};

_vehicle_1303 = objNull;
if (true) then
{
  _this = createVehicle ["UralWreck", [7073.2651, 2518.8274, -5.2452087e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1303 = _this;
  _this setPos [7073.2651, 2518.8274, -5.2452087e-006];
};

_vehicle_1304 = objNull;
if (true) then
{
  _this = createVehicle ["UralWreck", [6973.1958, 2652.9219, 3.4332275e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1304 = _this;
  _this setDir -141.67859;
  _this setPos [6973.1958, 2652.9219, 3.4332275e-005];
};

_vehicle_1305 = objNull;
if (true) then
{
  _this = createVehicle ["UAZWreck", [6922.4922, 2606.623, -9.5367432e-007], [], 0, "CAN_COLLIDE"];
  _vehicle_1305 = _this;
  _this setPos [6922.4922, 2606.623, -9.5367432e-007];
};

_vehicle_1306 = objNull;
if (true) then
{
  _this = createVehicle ["HMMWVWreck", [6863.1172, 2611.7197, 5.2452087e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1306 = _this;
  _this setDir 94.486511;
  _this setPos [6863.1172, 2611.7197, 5.2452087e-006];
};

_vehicle_1307 = objNull;
if (true) then
{
  _this = createVehicle ["datsun01Wreck", [6859.6694, 2615.6714, -2.3841858e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1307 = _this;
  _this setPos [6859.6694, 2615.6714, -2.3841858e-006];
};

_vehicle_1308 = objNull;
if (true) then
{
  _this = createVehicle ["datsun01Wreck", [6860.8428, 2544.0698, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1308 = _this;
  _this setDir -113.95145;
  _this setPos [6860.8428, 2544.0698, 3.8146973e-006];
};

_vehicle_1309 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [6855.5522, 2540.1323, -1.9073486e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1309 = _this;
  _this setDir 29.132076;
  _this setPos [6855.5522, 2540.1323, -1.9073486e-006];
};

_vehicle_1311 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_corner", [6818.4399, 2499.1653, -1.001358e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1311 = _this;
  _this setDir 42.335083;
  _this setPos [6818.4399, 2499.1653, -1.001358e-005];
};

_vehicle_1313 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fortified_nest_small", [6824.2046, 2496.8982, 2.8610229e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1313 = _this;
  _this setDir 135.71533;
  _this setPos [6824.2046, 2496.8982, 2.8610229e-006];
};

_vehicle_1315 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [6820.0947, 2502.426, -8.1062317e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1315 = _this;
  _this setDir -46.382545;
  _this setPos [6820.0947, 2502.426, -8.1062317e-006];
};

_vehicle_1316 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_Stripes", [6826.6841, 2502.9111, -4.7683716e-007], [], 0, "CAN_COLLIDE"];
  _vehicle_1316 = _this;
  _this setDir 15.145102;
  _this setPos [6826.6841, 2502.9111, -4.7683716e-007];
};

_vehicle_1317 = objNull;
if (true) then
{
  _this = createVehicle ["Barrel1", [6825.0166, 2501.418, -9.5367432e-007], [], 0, "CAN_COLLIDE"];
  _vehicle_1317 = _this;
  _this setPos [6825.0166, 2501.418, -9.5367432e-007];
};

_vehicle_1318 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrates_NoInteractive_Small", [6819.7358, 2499.7302, -2.8610229e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1318 = _this;
  _this setPos [6819.7358, 2499.7302, -2.8610229e-006];
};

_vehicle_1319 = objNull;
if (true) then
{
  _this = createVehicle ["datsun02Wreck", [6973.7559, 2494.8916, 1.5735626e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1319 = _this;
  _this setPos [6973.7559, 2494.8916, 1.5735626e-005];
};

_vehicle_1320 = objNull;
if (true) then
{
  _this = createVehicle ["SKODAWreck", [6926.6567, 2520.4263, 4.7683716e-007], [], 0, "CAN_COLLIDE"];
  _vehicle_1320 = _this;
  _this setDir 92.464561;
  _this setPos [6926.6567, 2520.4263, 4.7683716e-007];
};

_vehicle_1321 = objNull;
if (true) then
{
  _this = createVehicle ["UAZWreck", [6873.6284, 2476.447, -5.197525e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1321 = _this;
  _this setDir 3.8254004;
  _this setPos [6873.6284, 2476.447, -5.197525e-005];
};

_vehicle_1323 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [6817.2856, 2493.4873, -4.7683716e-007], [], 0, "CAN_COLLIDE"];
  _vehicle_1323 = _this;
  _this setDir 33.943378;
  _this setPos [6817.2856, 2493.4873, -4.7683716e-007];
};

_vehicle_1325 = objNull;
if (true) then
{
  _this = createVehicle ["datsun01Wreck", [6753.769, 2429.5908, -5.1498413e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1325 = _this;
  _this setPos [6753.769, 2429.5908, -5.1498413e-005];
};

_vehicle_1326 = objNull;
if (true) then
{
  _this = createVehicle ["UAZWreck", [6713.3413, 2425.2747, -5.2452087e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1326 = _this;
  _this setPos [6713.3413, 2425.2747, -5.2452087e-006];
};

_vehicle_1327 = objNull;
if (true) then
{
  _this = createVehicle ["UralWreck", [6698.7954, 2370.3696, -2.0027161e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1327 = _this;
  _this setDir 61.016602;
  _this setPos [6698.7954, 2370.3696, -2.0027161e-005];
};

_vehicle_1331 = objNull;
if (true) then
{
  _this = createVehicle ["UralWreck", [6796.8799, 2515.8213, 2.3841858e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1331 = _this;
  _this setDir 106.39701;
  _this setPos [6796.8799, 2515.8213, 2.3841858e-006];
};

_vehicle_1332 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [6776.4448, 2512.2876, 1.1920929e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1332 = _this;
  _this setDir 22.157761;
  _this setPos [6776.4448, 2512.2876, 1.1920929e-005];
};

_vehicle_1334 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_GContainer_Big", [6764.6553, 2469.783, -5.7220459e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1334 = _this;
  _this setDir 44.624943;
  _this setPos [6764.6553, 2469.783, -5.7220459e-006];
};

_vehicle_1335 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Pneu", [6781.0645, 2514.291, 1.7642975e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1335 = _this;
  _this setPos [6781.0645, 2514.291, 1.7642975e-005];
};

_vehicle_1337 = objNull;
if (true) then
{
  _this = createVehicle ["hiluxWreck", [6782.4077, 2518.5044, -6.6757202e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1337 = _this;
  _this setDir 73.263435;
  _this setPos [6782.4077, 2518.5044, -6.6757202e-005];
};

_vehicle_1338 = objNull;
if (true) then
{
  _this = createVehicle ["MASH", [6878.4434, 2515.1394, 4.2915344e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1338 = _this;
  _this setDir -45.982952;
  _this setPos [6878.4434, 2515.1394, 4.2915344e-006];
};

_vehicle_1340 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CamoNet_EAST", [6862.9336, 2518.2087, 9.5367432e-007], [], 0, "CAN_COLLIDE"];
  _vehicle_1340 = _this;
  _this setDir -138.59253;
  _this setPos [6862.9336, 2518.2087, 9.5367432e-007];
};

_vehicle_1341 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrates_NoInteractive_Large", [6867.2661, 2517.2534, 1.9073486e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1341 = _this;
  _this setPos [6867.2661, 2517.2534, 1.9073486e-006];
};

_vehicle_1342 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_cargo_cont_small2", [6862.7393, 2521.1853, -1.6689301e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1342 = _this;
  _this setDir 18.472813;
  _this setPos [6862.7393, 2521.1853, -1.6689301e-005];
};

_vehicle_1343 = objNull;
if (true) then
{
  _this = createVehicle ["Barrel1", [6876.0933, 2519.1267, 2.3841858e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1343 = _this;
  _this setPos [6876.0933, 2519.1267, 2.3841858e-005];
};

_vehicle_1344 = objNull;
if (true) then
{
  _this = createVehicle ["Body", [6868.9341, 2522.0337, -2.4795532e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1344 = _this;
  _this setDir 20.159266;
  _this setPos [6868.9341, 2522.0337, -2.4795532e-005];
};

_vehicle_1345 = objNull;
if (true) then
{
  _this = createVehicle ["Body", [6867.4092, 2523.3601, 1.3828278e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1345 = _this;
  _this setDir 38.620235;
  _this setPos [6867.4092, 2523.3601, 1.3828278e-005];
};

_vehicle_1346 = objNull;
if (true) then
{
  _this = createVehicle ["Body", [6865.7998, 2525.4287, 2.8610229e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1346 = _this;
  _this setPos [6865.7998, 2525.4287, 2.8610229e-006];
};

_vehicle_1347 = objNull;
if (true) then
{
  _this = createVehicle ["SKODAWreck", [6769.1577, 2550.4409, 7.1525574e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1347 = _this;
  _this setDir -78.624771;
  _this setPos [6769.1577, 2550.4409, 7.1525574e-006];
};

_vehicle_1348 = objNull;
if (true) then
{
  _this = createVehicle ["UralWreck", [6669.002, 2496.8123, 1.2874603e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1348 = _this;
  _this setDir 3.1442943;
  _this setPos [6669.002, 2496.8123, 1.2874603e-005];
};

_vehicle_1349 = objNull;
if (true) then
{
  _this = createVehicle ["UAZWreck", [6635.2612, 2467.938, -2.3841858e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1349 = _this;
  _this setDir 78.216301;
  _this setPos [6635.2612, 2467.938, -2.3841858e-006];
};

_vehicle_1352 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [6704.0156, 2536.1836, 5.7220459e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1352 = _this;
  _this setDir 21.300583;
  _this setPos [6704.0156, 2536.1836, 5.7220459e-006];
};

_vehicle_1355 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Pneu", [5858.1743, 4581.542, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1355 = _this;
  _this setPos [5858.1743, 4581.542, 3.0517578e-005];
};

_vehicle_1356 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Wheel_cart_EP1", [5857.4946, 4584.5313, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1356 = _this;
  _this setDir -27.370417;
  _this setPos [5857.4946, 4584.5313, -4.5776367e-005];
};

_vehicle_1358 = objNull;
if (true) then
{
  _this = createVehicle ["hiluxWreck", [5867.6665, 4629.1938], [], 0, "CAN_COLLIDE"];
  _vehicle_1358 = _this;
  _this setDir -154.0862;
  _this setPos [5867.6665, 4629.1938];
};

_vehicle_1359 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_IronPipes_EP1", [5851.0425, 4695.2925, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1359 = _this;
  _this setPos [5851.0425, 4695.2925, -3.0517578e-005];
};

_vehicle_1360 = objNull;
if (true) then
{
  _this = createVehicle ["Paleta2", [5851.1235, 4689.8413, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1360 = _this;
  _this setDir 39.509911;
  _this setPos [5851.1235, 4689.8413, -3.0517578e-005];
};

_vehicle_1361 = objNull;
if (true) then
{
  _this = createVehicle ["Paleta1", [5850.9326, 4701.2803, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1361 = _this;
  _this setDir 19.596504;
  _this setPos [5850.9326, 4701.2803, -1.5258789e-005];
};

_vehicle_1362 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_IronPipes_EP1", [9165.1758, 3790.8887, 7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1362 = _this;
  _this setPos [9165.1758, 3790.8887, 7.6293945e-005];
};

_vehicle_1363 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Coil_EP1", [9166.4404, 3785.9226, 0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_1363 = _this;
  _this setPos [9166.4404, 3785.9226, 0.00012207031];
};

_vehicle_1365 = objNull;
if (true) then
{
  _this = createVehicle ["hiluxWreck", [9176.5186, 3823.6184, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1365 = _this;
  _this setDir -145.98628;
  _this setPos [9176.5186, 3823.6184, -3.0517578e-005];
};

_vehicle_1366 = objNull;
if (true) then
{
  _this = createVehicle ["UAZWreck", [9155.0215, 3889.6035], [], 0, "CAN_COLLIDE"];
  _vehicle_1366 = _this;
  _this setPos [9155.0215, 3889.6035];
};

_vehicle_1367 = objNull;
if (true) then
{
  _this = createVehicle ["UAZWreck", [3965.5032, 8799.3428, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1367 = _this;
  _this setDir -12.075411;
  _this setPos [3965.5032, 8799.3428, -3.0517578e-005];
};

_vehicle_1368 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fortified_nest_small", [3913.9202, 8827.2373], [], 0, "CAN_COLLIDE"];
  _vehicle_1368 = _this;
  _this setDir -72.432846;
  _this setPos [3913.9202, 8827.2373];
};

_vehicle_1369 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [3913.9805, 8823.0703, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1369 = _this;
  _this setDir -72.758492;
  _this setPos [3913.9805, 8823.0703, 3.0517578e-005];
};

_vehicle_1370 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_Stripes", [3918.502, 8822.6348], [], 0, "CAN_COLLIDE"];
  _vehicle_1370 = _this;
  _this setDir -57.68745;
  _this setPos [3918.502, 8822.6348];
};

_vehicle_1371 = objNull;
if (true) then
{
  _this = createVehicle ["Sign_Checkpoint", [3919.8684, 8819.374], [], 0, "CAN_COLLIDE"];
  _vehicle_1371 = _this;
  _this setDir 115.74496;
  _this setPos [3919.8684, 8819.374];
};

_vehicle_1372 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [3916.8787, 8820.1104], [], 0, "CAN_COLLIDE"];
  _vehicle_1372 = _this;
  _this setDir -83.073441;
  _this setPos [3916.8787, 8820.1104];
};

_vehicle_1373 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [3848.5146, 8846.0508, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1373 = _this;
  _this setDir -287.33298;
  _this setPos [3848.5146, 8846.0508, 3.0517578e-005];
};

_vehicle_1375 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Garb_Heap_EP1", [3844.322, 8846.7803], [], 0, "CAN_COLLIDE"];
  _vehicle_1375 = _this;
  _this setPos [3844.322, 8846.7803];
};

_vehicle_1376 = objNull;
if (true) then
{
  _this = createVehicle ["UralWreck", [3824.5181, 8853.5117, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1376 = _this;
  _this setDir 67.070007;
  _this setPos [3824.5181, 8853.5117, -6.1035156e-005];
};

_vehicle_1377 = objNull;
if (true) then
{
  _this = createVehicle ["hiluxWreck", [3792.2178, 8877.7803, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1377 = _this;
  _this setDir 124.13197;
  _this setPos [3792.2178, 8877.7803, -3.0517578e-005];
};

_vehicle_1378 = objNull;
if (true) then
{
  _this = createVehicle ["Land_transport_cart_EP1", [3764.8252, 8885.7715, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1378 = _this;
  _this setDir -84.955299;
  _this setPos [3764.8252, 8885.7715, -3.0517578e-005];
};

_vehicle_1379 = objNull;
if (true) then
{
  _this = createVehicle ["Land_transport_crates_EP1", [3759.1272, 8888.5732, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1379 = _this;
  _this setDir -9.074523;
  _this setPos [3759.1272, 8888.5732, -3.0517578e-005];
};

_vehicle_1381 = objNull;
if (true) then
{
  _this = createVehicle ["UralWreck", [3700.4939, 8921.9473, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1381 = _this;
  _this setDir -100.46142;
  _this setPos [3700.4939, 8921.9473, -3.0517578e-005];
};

_vehicle_1382 = objNull;
if (true) then
{
  _this = createVehicle ["UAZWreck", [3616.8291, 8980.0244, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1382 = _this;
  _this setPos [3616.8291, 8980.0244, -3.0517578e-005];
};

_vehicle_1391 = objNull;
if (true) then
{
  _this = createVehicle ["datsun01Wreck", [7162.0415, 7691.7886, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1391 = _this;
  _this setDir -20.754112;
  _this setPos [7162.0415, 7691.7886, 3.0517578e-005];
};

_vehicle_1392 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CamoNet_EAST", [6316.3184, 7785.4883, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1392 = _this;
  _this setDir 212.44659;
  _this setPos [6316.3184, 7785.4883, 3.0517578e-005];
};

_vehicle_1394 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_cargo_cont_small_EP1", [6346.9082, 7819.165, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1394 = _this;
  _this setDir -264.54419;
  _this setPos [6346.9082, 7819.165, 3.0517578e-005];
};

_vehicle_1395 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrates_NoInteractive_Large", [6336.8667, 7825.4995, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1395 = _this;
  _this setPos [6336.8667, 7825.4995, -3.0517578e-005];
};

_vehicle_1396 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrates_NoInteractive_Small", [6336.8442, 7823.1772], [], 0, "CAN_COLLIDE"];
  _vehicle_1396 = _this;
  _this setDir -49.900784;
  _this setPos [6336.8442, 7823.1772];
};

_vehicle_1399 = objNull;
if (true) then
{
  _this = createVehicle ["MASH", [6307.8545, 7790.8667, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1399 = _this;
  _this setDir 33.610813;
  _this setPos [6307.8545, 7790.8667, -3.0517578e-005];
};

_vehicle_1400 = objNull;
if (true) then
{
  _this = createVehicle ["Land_GuardShed", [6270.6758, 7826.9653], [], 0, "CAN_COLLIDE"];
  _vehicle_1400 = _this;
  _this setDir 1.8703773;
  _this setPos [6270.6758, 7826.9653];
};

_vehicle_1401 = objNull;
if (true) then
{
  _this = createVehicle ["CampEast", [6297.5586, 7815.2427, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1401 = _this;
  _this setDir 31.186457;
  _this setPos [6297.5586, 7815.2427, 3.0517578e-005];
};

_vehicle_1402 = objNull;
if (true) then
{
  _this = createVehicle ["Camp", [6295.1655, 7799.52, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1402 = _this;
  _this setDir 33.64286;
  _this setPos [6295.1655, 7799.52, -3.0517578e-005];
};

_vehicle_1403 = objNull;
if (true) then
{
  _this = createVehicle ["Camp", [6301.5732, 7795.4624, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1403 = _this;
  _this setDir 31.752966;
  _this setPos [6301.5732, 7795.4624, 3.0517578e-005];
};

_vehicle_1405 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fortified_nest_small", [6272.4546, 7817.7451], [], 0, "CAN_COLLIDE"];
  _vehicle_1405 = _this;
  _this setDir 92.674896;
  _this setPos [6272.4546, 7817.7451];
};

_vehicle_1407 = objNull;
if (true) then
{
  _this = createVehicle ["PowGen_Big", [6305.9941, 7811.084, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1407 = _this;
  _this setDir 53.709816;
  _this setPos [6305.9941, 7811.084, 3.0517578e-005];
};

_vehicle_1408 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Antenna", [6304.1899, 7814.0171, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_1408 = _this;
  _this setPos [6304.1899, 7814.0171, 0];
};

_vehicle_1409 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrates_NoInteractive_Large", [6315.6016, 7787.9707, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1409 = _this;
  _this setPos [6315.6016, 7787.9707, 3.0517578e-005];
};

_vehicle_1411 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Cargo1E_EP1", [6284.8599, 7803.4043, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1411 = _this;
  _this setDir -53.043079;
  _this setPos [6284.8599, 7803.4043, 6.1035156e-005];
};

_vehicle_1412 = objNull;
if (true) then
{
  _this = createVehicle ["CampEast", [6315.2632, 7803.8774, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1412 = _this;
  _this setDir 33.008625;
  _this setPos [6315.2632, 7803.8774, -6.1035156e-005];
};

_vehicle_1414 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_cargo_cont_tiny", [6319.9302, 7785.5796, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1414 = _this;
  _this setDir -61.735229;
  _this setPos [6319.9302, 7785.5796, -6.1035156e-005];
};

_vehicle_1415 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrate_NoInteractive_", [6338.5029, 7823.6392, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1415 = _this;
  _this setDir -25.201323;
  _this setPos [6338.5029, 7823.6392, -6.1035156e-005];
};

_vehicle_1422 = objNull;
if (true) then
{
  _this = createVehicle ["CampEast_EP1", [6323.79, 7798.3247, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1422 = _this;
  _this setDir 33.699528;
  _this setPos [6323.79, 7798.3247, -3.0517578e-005];
};

_vehicle_1423 = objNull;
if (true) then
{
  _this = createVehicle ["PowGen_Big", [6329.7471, 7783.3384], [], 0, "CAN_COLLIDE"];
  _vehicle_1423 = _this;
  _this setDir 118.49767;
  _this setPos [6329.7471, 7783.3384];
};

_vehicle_1429 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [6268.1196, 7819.0547, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1429 = _this;
  _this setDir 79.53141;
  _this setPos [6268.1196, 7819.0547, -3.0517578e-005];
};

_vehicle_1430 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_Stripes", [6267.7837, 7826.2212], [], 0, "CAN_COLLIDE"];
  _vehicle_1430 = _this;
  _this setDir 65.98481;
  _this setPos [6267.7837, 7826.2212];
};

_vehicle_1431 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [6268.5498, 7816.0674, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1431 = _this;
  _this setDir -120.92944;
  _this setPos [6268.5498, 7816.0674, -6.1035156e-005];
};

_vehicle_1432 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Toilet", [6332.8579, 7774.3213, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1432 = _this;
  _this setDir 218.51837;
  _this setPos [6332.8579, 7774.3213, -3.0517578e-005];
};

_vehicle_1433 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Toilet", [6330.7539, 7775.5513, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1433 = _this;
  _this setDir 208.33188;
  _this setPos [6330.7539, 7775.5513, -9.1552734e-005];
};

_vehicle_1434 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Toilet", [6328.936, 7777.1001], [], 0, "CAN_COLLIDE"];
  _vehicle_1434 = _this;
  _this setDir 223.50278;
  _this setPos [6328.936, 7777.1001];
};

_vehicle_1435 = objNull;
if (true) then
{
  _this = createVehicle ["Barrel1", [6333.5601, 7772.8862, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1435 = _this;
  _this setPos [6333.5601, 7772.8862, -3.0517578e-005];
};

_vehicle_1449 = objNull;
if (true) then
{
  _this = createVehicle ["USMC_WarfareBFieldhHospital", [4766.3442, 2548.3218, -1.1444092e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1449 = _this;
  _this setDir 30.854082;
  _this setPos [4766.3442, 2548.3218, -1.1444092e-005];
};

_vehicle_1450 = objNull;
if (true) then
{
  _this = createVehicle ["PowGen_Big", [4768.2939, 2529.2124, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1450 = _this;
  _this setDir 102.58082;
  _this setPos [4768.2939, 2529.2124, 3.8146973e-006];
};

_vehicle_1451 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Antenna", [4773.3613, 2531.2019, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1451 = _this;
  _this setDir 181.19989;
  _this setPos [4773.3613, 2531.2019, -1.5258789e-005];
};

_vehicle_1454 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_small_EP1", [4773.6436, 2536.6052, 1.0490417e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1454 = _this;
  _this setDir 181.19989;
  _this setPos [4773.6436, 2536.6052, 1.0490417e-005];
};

_vehicle_1456 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [4755.9302, 2540.2026, 2.8610229e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1456 = _this;
  _this setDir 181.19989;
  _this setPos [4755.9302, 2540.2026, 2.8610229e-006];
};

_vehicle_1458 = objNull;
if (true) then
{
  _this = createVehicle ["Land_bags_stack_EP1", [4768.5605, 2532.3862, 1.4781952e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1458 = _this;
  _this setDir 152.2634;
  _this setPos [4768.5605, 2532.3862, 1.4781952e-005];
};

_vehicle_1479 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_cargo_cont_tiny", [4739.7031, 2570.0164, -9.5367432e-007], [], 0, "CAN_COLLIDE"];
  _vehicle_1479 = _this;
  _this setDir 90.308144;
  _this setPos [4739.7031, 2570.0164, -9.5367432e-007];
};

_vehicle_1480 = objNull;
if (true) then
{
  _this = createVehicle ["CampEast", [4744.9966, 2548.6196, 1.0967255e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1480 = _this;
  _this setDir 210.37341;
  _this setPos [4744.9966, 2548.6196, 1.0967255e-005];
};

_vehicle_1481 = objNull;
if (true) then
{
  _this = createVehicle ["CampEast", [4736.1499, 2553.8123, 2.0980835e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1481 = _this;
  _this setDir 210.45667;
  _this setPos [4736.1499, 2553.8123, 2.0980835e-005];
};

_vehicle_1483 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [4670.4224, 2589.0444, -2.8610229e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1483 = _this;
  _this setDir 47.240524;
  _this setPos [4670.4224, 2589.0444, -2.8610229e-006];
};

_vehicle_1485 = objNull;
if (true) then
{
  _this = createVehicle ["Camp_EP1", [4752.3511, 2563.5535, -9.5367432e-007], [], 0, "CAN_COLLIDE"];
  _vehicle_1485 = _this;
  _this setDir 209.0947;
  _this setPos [4752.3511, 2563.5535, -9.5367432e-007];
};

_vehicle_1486 = objNull;
if (true) then
{
  _this = createVehicle ["Camp_EP1", [4745.4795, 2567.5088, 4.7683716e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1486 = _this;
  _this setDir 208.44885;
  _this setPos [4745.4795, 2567.5088, 4.7683716e-006];
};

_vehicle_1500 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Cargo1E_EP1", [4789.541, 2540.9666, 3.3378601e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1500 = _this;
  _this setDir 209.68431;
  _this setPos [4789.541, 2540.9666, 3.3378601e-006];
};

_vehicle_1501 = objNull;
if (true) then
{
  _this = createVehicle ["UralWreck", [4680.7603, 2603.3696, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1501 = _this;
  _this setDir 343.21844;
  _this setPos [4680.7603, 2603.3696, 3.8146973e-006];
};

_vehicle_1502 = objNull;
if (true) then
{
  _this = createVehicle ["datsun02Wreck", [4790.3047, 2360.0566, 3.6239624e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1502 = _this;
  _this setDir -21.029863;
  _this setPos [4790.3047, 2360.0566, 3.6239624e-005];
};

_vehicle_1507 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [4752.2075, 2536.1025, 2.3365021e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1507 = _this;
  _this setDir 204.36769;
  _this setPos [4752.2075, 2536.1025, 2.3365021e-005];
};

_vehicle_1508 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_Stripes", [4757.2949, 2533.1479, -9.5367432e-007], [], 0, "CAN_COLLIDE"];
  _vehicle_1508 = _this;
  _this setDir 216.36951;
  _this setPos [4757.2949, 2533.1479, -9.5367432e-007];
};

_vehicle_1509 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Garb_Heap_EP1", [4709.189, 2593.3511, -1.0967255e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1509 = _this;
  _this setDir 181.19989;
  _this setPos [4709.189, 2593.3511, -1.0967255e-005];
};

_vehicle_1510 = objNull;
if (true) then
{
  _this = createVehicle ["Barrel1", [4766.6426, 2532.7864, -5.0544739e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1510 = _this;
  _this setDir 181.19989;
  _this setPos [4766.6426, 2532.7864, -5.0544739e-005];
};

_vehicle_1512 = objNull;
if (true) then
{
  _this = createVehicle ["Camp_EP1", [4781.729, 2542.5623, -1.9073486e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1512 = _this;
  _this setDir 300.80814;
  _this setPos [4781.729, 2542.5623, -1.9073486e-006];
};

_vehicle_1513 = objNull;
if (true) then
{
  _this = createVehicle ["Camp_EP1", [4778.126, 2536.0347, -1.9073486e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1513 = _this;
  _this setDir 300.18097;
  _this setPos [4778.126, 2536.0347, -1.9073486e-006];
};

_vehicle_1514 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Cargo1Eo_EP1", [4716.0415, 2555.3652, 7.1525574e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1514 = _this;
  _this setDir 337.15347;
  _this setPos [4716.0415, 2555.3652, 7.1525574e-006];
};

_vehicle_1515 = objNull;
if (true) then
{
  _this = createVehicle ["Barrel1", [4729.0845, 2557.2683, -3.3378601e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1515 = _this;
  _this setDir 181.19989;
  _this setPos [4729.0845, 2557.2683, -3.3378601e-006];
};

_vehicle_1516 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_Stripes", [4728.2295, 2557.9966, 1.6689301e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1516 = _this;
  _this setDir 144.77533;
  _this setPos [4728.2295, 2557.9966, 1.6689301e-005];
};

_vehicle_1517 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_concrete_High", [4742.5293, 2536.7788, -8.1062317e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1517 = _this;
  _this setDir 182.24982;
  _this setPos [4742.5293, 2536.7788, -8.1062317e-006];
};

_vehicle_1518 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Garb_Heap_EP1", [4738.9063, 2538.0698, 5.2452087e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1518 = _this;
  _this setDir 181.19989;
  _this setPos [4738.9063, 2538.0698, 5.2452087e-006];
};

_vehicle_1519 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [9526.1396, 2026.1932, -2.8610229e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1519 = _this;
  _this setDir 85.036987;
  _this setPos [9526.1396, 2026.1932, -2.8610229e-006];
};

_vehicle_1522 = objNull;
if (true) then
{
  _this = createVehicle ["CampEast", [6314.9995, 7838.875], [], 0, "CAN_COLLIDE"];
  _vehicle_1522 = _this;
  _this setDir 34.318134;
  _this setPos [6314.9995, 7838.875];
};

_vehicle_1525 = objNull;
if (true) then
{
  _this = createVehicle ["USMC_WarfareBFieldhHospital", [6348.6118, 7777.519, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1525 = _this;
  _this setDir 32.773407;
  _this setPos [6348.6118, 7777.519, 6.1035156e-005];
};

_vehicle_1526 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBContructionSite", [6289.0762, 7845.1016], [], 0, "CAN_COLLIDE"];
  _vehicle_1526 = _this;
  _this setDir 214.40331;
  _this setPos [6289.0762, 7845.1016];
};

_vehicle_1531 = objNull;
if (true) then
{
  _this = createVehicle ["USMC_WarfareBVehicleServicePoint", [6334.749, 7792.6831, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1531 = _this;
  _this setDir -49.866432;
  _this setPos [6334.749, 7792.6831, 3.0517578e-005];
};

_vehicle_1533 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_small_2_EP1", [6321.6558, 7819.6675, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_1533 = _this;
  _this setPos [6321.6558, 7819.6675, 0];
};

_vehicle_1534 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_small_2_EP1", [6318.4531, 7823.0308, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1534 = _this;
  _this setPos [6318.4531, 7823.0308, -3.0517578e-005];
};

_vehicle_1535 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [6305.3462, 7844.0234, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1535 = _this;
  _this setDir -46.646851;
  _this setPos [6305.3462, 7844.0234, -3.0517578e-005];
};

_vehicle_1536 = objNull;
if (true) then
{
  _this = createVehicle ["Barrels", [6307.1196, 7843.478, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1536 = _this;
  _this setDir 16.429165;
  _this setPos [6307.1196, 7843.478, 3.0517578e-005];
};

_vehicle_1537 = objNull;
if (true) then
{
  _this = createVehicle ["Barrel4", [6305.6387, 7842.1904], [], 0, "CAN_COLLIDE"];
  _vehicle_1537 = _this;
  _this setPos [6305.6387, 7842.1904];
};

_vehicle_1538 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrates_NoInteractive_Medium", [6274.0039, 7814.0693], [], 0, "CAN_COLLIDE"];
  _vehicle_1538 = _this;
  _this setDir -38.816208;
  _this setPos [6274.0039, 7814.0693];
};

_vehicle_1599 = objNull;
if (true) then
{
  _this = createVehicle ["datsun01Wreck", [4784.8701, 6789.4282, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1599 = _this;
  _this setPos [4784.8701, 6789.4282, 3.0517578e-005];
};

_vehicle_1600 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [4835.606, 6786.0337], [], 0, "CAN_COLLIDE"];
  _vehicle_1600 = _this;
  _this setDir -73.679199;
  _this setPos [4835.606, 6786.0337];
};

_vehicle_1601 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_corner", [4835.5259, 6789.8779], [], 0, "CAN_COLLIDE"];
  _vehicle_1601 = _this;
  _this setDir -164.3033;
  _this setPos [4835.5259, 6789.8779];
};

_vehicle_1602 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_Stripes", [4839.4976, 6787.4819], [], 0, "CAN_COLLIDE"];
  _vehicle_1602 = _this;
  _this setDir -84.90316;
  _this setPos [4839.4976, 6787.4819];
};

_vehicle_1603 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [4774.1738, 6715.0845, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_1603 = _this;
  _this setPos [4774.1738, 6715.0845, 0];
};

_vehicle_1604 = objNull;
if (true) then
{
  _this = createVehicle ["Barrel4", [4833.1108, 6791.77], [], 0, "CAN_COLLIDE"];
  _vehicle_1604 = _this;
  _this setPos [4833.1108, 6791.77];
};

_vehicle_1605 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrates_NoInteractive_Large", [4833.6675, 6786.7588], [], 0, "CAN_COLLIDE"];
  _vehicle_1605 = _this;
  _this setDir -65.144394;
  _this setPos [4833.6675, 6786.7588];
};

_vehicle_1607 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [2557.5762, 5032.5815], [], 0, "CAN_COLLIDE"];
  _vehicle_1607 = _this;
  _this setDir 34.88168;
  _this setPos [2557.5762, 5032.5815];
};

_vehicle_1608 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_Stripes", [2559.5767, 5029.2163, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1608 = _this;
  _this setDir 65.945107;
  _this setPos [2559.5767, 5029.2163, -1.5258789e-005];
};

_vehicle_1609 = objNull;
if (true) then
{
  _this = createVehicle ["datsun02Wreck", [2529.7825, 5016.9282, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1609 = _this;
  _this setPos [2529.7825, 5016.9282, 1.5258789e-005];
};

_vehicle_1610 = objNull;
if (true) then
{
  _this = createVehicle ["hiluxWreck", [2636.3386, 5077.6362, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1610 = _this;
  _this setPos [2636.3386, 5077.6362, 1.5258789e-005];
};

_vehicle_1611 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [2688.2986, 5140.7153, -7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1611 = _this;
  _this setPos [2688.2986, 5140.7153, -7.6293945e-005];
};

_vehicle_1612 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Garb_Heap_EP1", [2686.3181, 5128.3384, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1612 = _this;
  _this setPos [2686.3181, 5128.3384, -3.0517578e-005];
};

_vehicle_1613 = objNull;
if (true) then
{
  _this = createVehicle ["Garbage_container", [2724.0134, 5195.4873, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1613 = _this;
  _this setPos [2724.0134, 5195.4873, -1.5258789e-005];
};

_vehicle_1614 = objNull;
if (true) then
{
  _this = createVehicle ["Paleta2", [2720.7354, 5193.1255], [], 0, "CAN_COLLIDE"];
  _vehicle_1614 = _this;
  _this setPos [2720.7354, 5193.1255];
};

_vehicle_1616 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Pneu", [2756.0925, 5300.5313, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1616 = _this;
  _this setPos [2756.0925, 5300.5313, -1.5258789e-005];
};

_vehicle_1617 = objNull;
if (true) then
{
  _this = createVehicle ["Land_transport_crates_EP1", [2766.1692, 5327.6157, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1617 = _this;
  _this setDir -93.14798;
  _this setPos [2766.1692, 5327.6157, -1.5258789e-005];
};

_vehicle_1618 = objNull;
if (true) then
{
  _this = createVehicle ["UAZWreck", [2755.0825, 5272.5332, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_1618 = _this;
  _this setPos [2755.0825, 5272.5332, 0];
};

_vehicle_1619 = objNull;
if (true) then
{
  _this = createVehicle ["UralWreck", [2757.5686, 5307.4727, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1619 = _this;
  _this setDir -152.74023;
  _this setPos [2757.5686, 5307.4727, -3.0517578e-005];
};

_vehicle_1620 = objNull;
if (true) then
{
  _this = createVehicle ["SKODAWreck", [2814.4446, 5419.9868, -0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_1620 = _this;
  _this setDir 76.537567;
  _this setPos [2814.4446, 5419.9868, -0.00012207031];
};

_vehicle_1621 = objNull;
if (true) then
{
  _this = createVehicle ["SKODAWreck", [3717.3591, 2487.8533, 2.3841858e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1621 = _this;
  _this setDir 50.289646;
  _this setPos [3717.3591, 2487.8533, 2.3841858e-006];
};

_vehicle_1622 = objNull;
if (true) then
{
  _this = createVehicle ["hiluxWreck", [3654.8701, 2479.4661, 2.8610229e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1622 = _this;
  _this setDir 45.65974;
  _this setPos [3654.8701, 2479.4661, 2.8610229e-006];
};

_vehicle_1623 = objNull;
if (true) then
{
  _this = createVehicle ["LADAWreck", [3647.9849, 2476.3689, 4.2915344e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1623 = _this;
  _this setDir -183.46257;
  _this setPos [3647.9849, 2476.3689, 4.2915344e-006];
};

_vehicle_1624 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [3595.3071, 2455.0093, -4.2915344e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1624 = _this;
  _this setDir 69.702705;
  _this setPos [3595.3071, 2455.0093, -4.2915344e-006];
};

_vehicle_1625 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_Stripes", [3592.0613, 2463.0757, -1.3828278e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1625 = _this;
  _this setDir 106.61397;
  _this setPos [3592.0613, 2463.0757, -1.3828278e-005];
};

_vehicle_1626 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Garb_Heap_EP1", [3618.4575, 2470.9292, -1.9073486e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1626 = _this;
  _this setPos [3618.4575, 2470.9292, -1.9073486e-006];
};

_vehicle_1627 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_IronPipes_EP1", [3589.697, 2451.5847, -3.3378601e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1627 = _this;
  _this setDir -28.628292;
  _this setPos [3589.697, 2451.5847, -3.3378601e-006];
};

_vehicle_1629 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [3588.8215, 2459.8462], [], 0, "CAN_COLLIDE"];
  _vehicle_1629 = _this;
  _this setDir -36.825134;
  _this setPos [3588.8215, 2459.8462];
};

_vehicle_1630 = objNull;
if (true) then
{
  _this = createVehicle ["Paleta2", [3624.0862, 2470.7703, -4.2915344e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1630 = _this;
  _this setPos [3624.0862, 2470.7703, -4.2915344e-006];
};

_vehicle_1633 = objNull;
if (true) then
{
  _this = createVehicle ["HMMWVWreck", [3836.6716, 2588.1318, -7.1525574e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1633 = _this;
  _this setDir 230.30594;
  _this setPos [3836.6716, 2588.1318, -7.1525574e-006];
};

_vehicle_1635 = objNull;
if (true) then
{
  _this = createVehicle ["hiluxWreck", [3844.3235, 2593.7073, -4.7683716e-007], [], 0, "CAN_COLLIDE"];
  _vehicle_1635 = _this;
  _this setPos [3844.3235, 2593.7073, -4.7683716e-007];
};

_vehicle_1636 = objNull;
if (true) then
{
  _this = createVehicle ["datsun01Wreck", [4346.9644, 2533.1348, -4.7683716e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1636 = _this;
  _this setPos [4346.9644, 2533.1348, -4.7683716e-006];
};

_vehicle_1637 = objNull;
if (true) then
{
  _this = createVehicle ["SKODAWreck", [4401.0771, 2505.2021, 1.4781952e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1637 = _this;
  _this setDir -93.379456;
  _this setPos [4401.0771, 2505.2021, 1.4781952e-005];
};

_vehicle_1638 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [4444.5977, 2473.1311, 4.7683716e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1638 = _this;
  _this setDir -50.05827;
  _this setPos [4444.5977, 2473.1311, 4.7683716e-006];
};

_vehicle_1639 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Garb_Heap_EP1", [4446.8687, 2469.2151, 4.2915344e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1639 = _this;
  _this setPos [4446.8687, 2469.2151, 4.2915344e-006];
};

_vehicle_1640 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Pneu", [4403.0938, 2500.6187, -4.2915344e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1640 = _this;
  _this setPos [4403.0938, 2500.6187, -4.2915344e-006];
};

_vehicle_1641 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [4575.7993, 2437.0613, -5.2452087e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1641 = _this;
  _this setDir -82.172035;
  _this setPos [4575.7993, 2437.0613, -5.2452087e-006];
};

_vehicle_1642 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_corner", [4574.7554, 2433.0305, -4.2915344e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1642 = _this;
  _this setDir -83.417694;
  _this setPos [4574.7554, 2433.0305, -4.2915344e-006];
};

_vehicle_1643 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [4576.146, 2429.4368, -4.2915344e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1643 = _this;
  _this setDir -108.33031;
  _this setPos [4576.146, 2429.4368, -4.2915344e-006];
};

_vehicle_1644 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrates_NoInteractive_Small", [4573.3506, 2434.259], [], 0, "CAN_COLLIDE"];
  _vehicle_1644 = _this;
  _this setPos [4573.3506, 2434.259];
};

_vehicle_1645 = objNull;
if (true) then
{
  _this = createVehicle ["HMMWVWreck", [13446.811, 6148.1846, -3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1645 = _this;
  _this setDir 28.117001;
  _this setPos [13446.811, 6148.1846, -3.8146973e-006];
};

_vehicle_1647 = objNull;
if (true) then
{
  _this = createVehicle ["hiluxWreck", [13444.035, 6140.5376, -1.4781952e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1647 = _this;
  _this setDir -213.15973;
  _this setPos [13444.035, 6140.5376, -1.4781952e-005];
};

_vehicle_1648 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_ConcPipeline_EP1", [13461.034, 6224.3149, 1.6689301e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1648 = _this;
  _this setDir -53.650326;
  _this setPos [13461.034, 6224.3149, 1.6689301e-005];
};

_vehicle_1650 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_Stripes", [13457.057, 6221.2012, -5.7220459e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1650 = _this;
  _this setPos [13457.057, 6221.2012, -5.7220459e-006];
};

_vehicle_1651 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [13413.287, 6248.4526, -6.6757202e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1651 = _this;
  _this setDir -52.069305;
  _this setPos [13413.287, 6248.4526, -6.6757202e-006];
};

_vehicle_1652 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Coil_EP1", [13405.018, 6249.4863, 2.8610229e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1652 = _this;
  _this setPos [13405.018, 6249.4863, 2.8610229e-006];
};

_vehicle_1653 = objNull;
if (true) then
{
  _this = createVehicle ["UralWreck", [13377.33, 6248.4014, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1653 = _this;
  _this setDir 76.735397;
  _this setPos [13377.33, 6248.4014, 3.8146973e-006];
};

_vehicle_1655 = objNull;
if (true) then
{
  _this = createVehicle ["UAZWreck", [13322.61, 6259.2964, -3.1471252e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1655 = _this;
  _this setDir 141.21207;
  _this setPos [13322.61, 6259.2964, -3.1471252e-005];
};

_vehicle_1656 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Garb_Heap_EP1", [13459.031, 6326.0903, -1.8596649e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1656 = _this;
  _this setPos [13459.031, 6326.0903, -1.8596649e-005];
};

_vehicle_1657 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Garb_Heap_EP1", [11950.279, 8993.9805, -0.00010681152], [], 0, "CAN_COLLIDE"];
  _vehicle_1657 = _this;
  _this setPos [11950.279, 8993.9805, -0.00010681152];
};

_vehicle_1658 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Garb_Heap_EP1", [11914.48, 9096.8193, 0.00011062622], [], 0, "CAN_COLLIDE"];
  _vehicle_1658 = _this;
  _this setPos [11914.48, 9096.8193, 0.00011062622];
};

_vehicle_1659 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Garb_Heap_EP1", [11927.688, 9186.5117, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1659 = _this;
  _this setPos [11927.688, 9186.5117, 3.8146973e-006];
};

_vehicle_1660 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Garb_Heap_EP1", [12030.254, 9109.8506, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_1660 = _this;
  _this setPos [12030.254, 9109.8506, 0];
};

_vehicle_1661 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [12027.156, 9112.8379, 1.1444092e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1661 = _this;
  _this setDir -15.095948;
  _this setPos [12027.156, 9112.8379, 1.1444092e-005];
};

_vehicle_1662 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [11980.618, 9027.7549, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1662 = _this;
  _this setDir 59.730022;
  _this setPos [11980.618, 9027.7549, 4.5776367e-005];
};

_vehicle_1663 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_concrete_High", [11977.035, 9026.2051, 2.2888184e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1663 = _this;
  _this setDir 59.23365;
  _this setPos [11977.035, 9026.2051, 2.2888184e-005];
};

_vehicle_1664 = objNull;
if (true) then
{
  _this = createVehicle ["UralWreck", [11884.683, 9017.6426, 2.2888184e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1664 = _this;
  _this setPos [11884.683, 9017.6426, 2.2888184e-005];
};

_vehicle_1665 = objNull;
if (true) then
{
  _this = createVehicle ["UAZWreck", [11929.207, 9109.333, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1665 = _this;
  _this setPos [11929.207, 9109.333, 3.0517578e-005];
};

_vehicle_1666 = objNull;
if (true) then
{
  _this = createVehicle ["SKODAWreck", [11955.602, 9146.3887, 7.2479248e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1666 = _this;
  _this setDir 59.834438;
  _this setPos [11955.602, 9146.3887, 7.2479248e-005];
};

_vehicle_1667 = objNull;
if (true) then
{
  _this = createVehicle ["hiluxWreck", [11883.226, 9198.3662, -2.2888184e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1667 = _this;
  _this setDir 79.072968;
  _this setPos [11883.226, 9198.3662, -2.2888184e-005];
};

_vehicle_1668 = objNull;
if (true) then
{
  _this = createVehicle ["datsun01Wreck", [12014.979, 9212.6738, 0.00017166138], [], 0, "CAN_COLLIDE"];
  _vehicle_1668 = _this;
  _this setDir -11.395062;
  _this setPos [12014.979, 9212.6738, 0.00017166138];
};

_vehicle_1669 = objNull;
if (true) then
{
  _this = createVehicle ["HMMWVWreck", [12063.3, 9151.8828, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1669 = _this;
  _this setPos [12063.3, 9151.8828, 3.8146973e-006];
};

_vehicle_1670 = objNull;
if (true) then
{
  _this = createVehicle ["UAZWreck", [12009.701, 9137.7012, -3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1670 = _this;
  _this setPos [12009.701, 9137.7012, -3.8146973e-006];
};

_vehicle_1671 = objNull;
if (true) then
{
  _this = createVehicle ["datsun02Wreck", [11982.914, 9175.8027], [], 0, "CAN_COLLIDE"];
  _vehicle_1671 = _this;
  _this setPos [11982.914, 9175.8027];
};

_vehicle_1672 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fortified_nest_big", [11989.246, 9184.541, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1672 = _this;
  _this setDir 43.081867;
  _this setPos [11989.246, 9184.541, 9.1552734e-005];
};

_vehicle_1673 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [11979.603, 9189.2793, 0.0001373291], [], 0, "CAN_COLLIDE"];
  _vehicle_1673 = _this;
  _this setDir 33.104168;
  _this setPos [11979.603, 9189.2793, 0.0001373291];
};

_vehicle_1674 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_corner", [11998.264, 9170.8193, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1674 = _this;
  _this setDir -82.654938;
  _this setPos [11998.264, 9170.8193, -1.5258789e-005];
};

_vehicle_1676 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier5", [11999.31, 9191.7607, -3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1676 = _this;
  _this setDir -78.872597;
  _this setPos [11999.31, 9191.7607, -3.8146973e-006];
};

_vehicle_1677 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier5", [12000.99, 9199.8086], [], 0, "CAN_COLLIDE"];
  _vehicle_1677 = _this;
  _this setDir -74.024086;
  _this setPos [12000.99, 9199.8086];
};

_vehicle_1678 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [11975.606, 9190.9883], [], 0, "CAN_COLLIDE"];
  _vehicle_1678 = _this;
  _this setDir 18.17285;
  _this setPos [11975.606, 9190.9883];
};

_vehicle_1679 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [11971.386, 9191.6035, -3.8146973e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1679 = _this;
  _this setPos [11971.386, 9191.6035, -3.8146973e-005];
};

_vehicle_1680 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fortified_nest_small", [12014.349, 9167.3477], [], 0, "CAN_COLLIDE"];
  _vehicle_1680 = _this;
  _this setDir 82.502266;
  _this setPos [12014.349, 9167.3477];
};

_vehicle_1681 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [11993.774, 9173.7197, -0.00010299683], [], 0, "CAN_COLLIDE"];
  _vehicle_1681 = _this;
  _this setDir 54.548912;
  _this setPos [11993.774, 9173.7197, -0.00010299683];
};

_vehicle_1682 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [12012.422, 9173.9707, -4.196167e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1682 = _this;
  _this setDir 84.13427;
  _this setPos [12012.422, 9173.9707, -4.196167e-005];
};

_vehicle_1683 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [12012.247, 9179.2695, -5.3405762e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1683 = _this;
  _this setDir 90.672661;
  _this setPos [12012.247, 9179.2695, -5.3405762e-005];
};

_vehicle_1684 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrates_NoInteractive_Large", [12014.243, 9163.75, -3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1684 = _this;
  _this setDir -38.672298;
  _this setPos [12014.243, 9163.75, -3.8146973e-006];
};

_vehicle_1685 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrates_NoInteractive_Medium", [11994.498, 9175.6426, -1.1444092e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1685 = _this;
  _this setDir -23.177328;
  _this setPos [11994.498, 9175.6426, -1.1444092e-005];
};

_vehicle_1686 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CamoNet_EAST", [11991.25, 9206.9766, -3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1686 = _this;
  _this setDir -67.515892;
  _this setPos [11991.25, 9206.9766, -3.8146973e-006];
};

_vehicle_1687 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrates_NoInteractive_Large", [11990.623, 9205.543, 2.6702881e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1687 = _this;
  _this setPos [11990.623, 9205.543, 2.6702881e-005];
};

_vehicle_1689 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_cargo_cont_tiny", [11993.096, 9208.8066, -6.8664551e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1689 = _this;
  _this setDir 38.85387;
  _this setPos [11993.096, 9208.8066, -6.8664551e-005];
};

_vehicle_1690 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrates_NoInteractive_Small", [11991.622, 9203.3535, 4.196167e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1690 = _this;
  _this setDir 18.396776;
  _this setPos [11991.622, 9203.3535, 4.196167e-005];
};

_vehicle_1691 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrate_NoInteractive_", [11992.594, 9205.2402, 1.9073486e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1691 = _this;
  _this setDir -66.949524;
  _this setPos [11992.594, 9205.2402, 1.9073486e-005];
};

_vehicle_1692 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [11948.914, 9131.0527, -7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1692 = _this;
  _this setDir -50.838661;
  _this setPos [11948.914, 9131.0527, -7.6293945e-005];
};

_vehicle_1693 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_corner", [11952.116, 9134.0713, -1.1444092e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1693 = _this;
  _this setDir 128.77675;
  _this setPos [11952.116, 9134.0713, -1.1444092e-005];
};

_vehicle_1694 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_corner", [11942.911, 9121.8623, -0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_1694 = _this;
  _this setDir 39.429329;
  _this setPos [11942.911, 9121.8623, -0.00012207031];
};

_vehicle_1695 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [11947.198, 9128.7949, 7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1695 = _this;
  _this setDir -53.590305;
  _this setPos [11947.198, 9128.7949, 7.6293945e-006];
};

_vehicle_1696 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [11945.408, 9126.4346, 1.1444092e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1696 = _this;
  _this setDir -50.830166;
  _this setPos [11945.408, 9126.4346, 1.1444092e-005];
};

_vehicle_1697 = objNull;
if (true) then
{
  _this = createVehicle ["UralWreck", [11775.982, 9126.1221, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1697 = _this;
  _this setDir 171.34718;
  _this setPos [11775.982, 9126.1221, -1.5258789e-005];
};

_vehicle_1698 = objNull;
if (true) then
{
  _this = createVehicle ["datsun02Wreck", [11809.615, 9060.0684, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1698 = _this;
  _this setDir 5.9003124;
  _this setPos [11809.615, 9060.0684, 3.0517578e-005];
};

_vehicle_1699 = objNull;
if (true) then
{
  _this = createVehicle ["UAZWreck", [12074.411, 9069.9824, 7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1699 = _this;
  _this setPos [12074.411, 9069.9824, 7.6293945e-005];
};

_vehicle_1700 = objNull;
if (true) then
{
  _this = createVehicle ["hiluxWreck", [9609.8877, 8799.4473, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1700 = _this;
  _this setDir 64.716782;
  _this setPos [9609.8877, 8799.4473, 6.1035156e-005];
};

_vehicle_1701 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [9559.6064, 8812.0771, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1701 = _this;
  _this setDir -26.009283;
  _this setPos [9559.6064, 8812.0771, 9.1552734e-005];
};

_vehicle_1702 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Garb_Heap_EP1", [9518.2949, 8813.3291, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1702 = _this;
  _this setPos [9518.2949, 8813.3291, 9.1552734e-005];
};

_vehicle_1703 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Pneu", [9561.1553, 8810.1357, 0.00015258789], [], 0, "CAN_COLLIDE"];
  _vehicle_1703 = _this;
  _this setPos [9561.1553, 8810.1357, 0.00015258789];
};

_vehicle_1704 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Pneu", [9441.3115, 8815.8057], [], 0, "CAN_COLLIDE"];
  _vehicle_1704 = _this;
  _this setPos [9441.3115, 8815.8057];
};

_vehicle_1705 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Ind_Timbers", [9434.3828, 8827.7246], [], 0, "CAN_COLLIDE"];
  _vehicle_1705 = _this;
  _this setDir 95.195923;
  _this setPos [9434.3828, 8827.7246];
};

_vehicle_1706 = objNull;
if (true) then
{
  _this = createVehicle ["Paleta2", [9443.7002, 8813.1777, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1706 = _this;
  _this setDir 15.76152;
  _this setPos [9443.7002, 8813.1777, -3.0517578e-005];
};

_vehicle_1709 = objNull;
if (true) then
{
  _this = createVehicle ["UralWreck", [9323.084, 8860.1221, 0.00030517578], [], 0, "CAN_COLLIDE"];
  _vehicle_1709 = _this;
  _this setDir 121.13303;
  _this setPos [9323.084, 8860.1221, 0.00030517578];
};

_vehicle_1710 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Garb_Heap_EP1", [9436.4785, 8813.6709], [], 0, "CAN_COLLIDE"];
  _vehicle_1710 = _this;
  _this setPos [9436.4785, 8813.6709];
};

_vehicle_1711 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_GContainer_Big", [9763.9736, 8798.9395, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1711 = _this;
  _this setDir -11.465732;
  _this setPos [9763.9736, 8798.9395, 3.0517578e-005];
};

_vehicle_1712 = objNull;
if (true) then
{
  _this = createVehicle ["datsun02Wreck", [9721.8809, 8799.9961], [], 0, "CAN_COLLIDE"];
  _vehicle_1712 = _this;
  _this setDir -222.37598;
  _this setPos [9721.8809, 8799.9961];
};

_vehicle_1713 = objNull;
if (true) then
{
  _this = createVehicle ["MASH", [12234.417, 9726.8975, -1.9073486e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1713 = _this;
  _this setDir 9.7249727;
  _this setPos [12234.417, 9726.8975, -1.9073486e-006];
};

_vehicle_1714 = objNull;
if (true) then
{
  _this = createVehicle ["PowGen_Big_EP1", [12226.329, 9734.1133, 7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1714 = _this;
  _this setDir -152.59038;
  _this setPos [12226.329, 9734.1133, 7.6293945e-006];
};

_vehicle_1715 = objNull;
if (true) then
{
  _this = createVehicle ["CampEast", [12245.948, 9754.7793, -1.1444092e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1715 = _this;
  _this setDir 12.096072;
  _this setPos [12245.948, 9754.7793, -1.1444092e-005];
};

_vehicle_1716 = objNull;
if (true) then
{
  _this = createVehicle ["CampEast", [12268.951, 9749.2637, 1.1444092e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1716 = _this;
  _this setDir 12.934394;
  _this setPos [12268.951, 9749.2637, 1.1444092e-005];
};

_vehicle_1717 = objNull;
if (true) then
{
  _this = createVehicle ["CampEast", [12257.443, 9751.9951], [], 0, "CAN_COLLIDE"];
  _vehicle_1717 = _this;
  _this setDir 12.2786;
  _this setPos [12257.443, 9751.9951];
};

_vehicle_1718 = objNull;
if (true) then
{
  _this = createVehicle ["Camp_EP1", [12242.324, 9725.3486, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1718 = _this;
  _this setDir 11.085872;
  _this setPos [12242.324, 9725.3486, 3.8146973e-006];
};

_vehicle_1720 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Antenna", [12222.183, 9738.876, -3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1720 = _this;
  _this setPos [12222.183, 9738.876, -3.8146973e-006];
};

_vehicle_1722 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Cargo1Eo_EP1", [12272.901, 9719.8516, 1.9073486e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1722 = _this;
  _this setDir 0.16898958;
  _this setPos [12272.901, 9719.8516, 1.9073486e-006];
};

_vehicle_1723 = objNull;
if (true) then
{
  _this = createVehicle ["Camp_EP1", [12228.726, 9743.9844, -2.0980835e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1723 = _this;
  _this setDir 99.191002;
  _this setPos [12228.726, 9743.9844, -2.0980835e-005];
};

_vehicle_1724 = objNull;
if (true) then
{
  _this = createVehicle ["Camp_EP1", [12230.245, 9751.3428, 2.8610229e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1724 = _this;
  _this setDir 100.59962;
  _this setPos [12230.245, 9751.3428, 2.8610229e-005];
};

_vehicle_1725 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CamoNetVar_EAST", [12256.436, 9721.0977], [], 0, "CAN_COLLIDE"];
  _vehicle_1725 = _this;
  _this setDir 9.9294424;
  _this setPos [12256.436, 9721.0977];
};

_vehicle_1726 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Backpackheap", [12252.454, 9722.7793, -2.4795532e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1726 = _this;
  _this setPos [12252.454, 9722.7793, -2.4795532e-005];
};

_vehicle_1727 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrates_NoInteractive_Medium", [12254.248, 9721.8027], [], 0, "CAN_COLLIDE"];
  _vehicle_1727 = _this;
  _this setPos [12254.248, 9721.8027];
};

_vehicle_1728 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrates_NoInteractive_Small", [12255.144, 9723.2207, 0.00011253357], [], 0, "CAN_COLLIDE"];
  _vehicle_1728 = _this;
  _this setDir 45.354176;
  _this setPos [12255.144, 9723.2207, 0.00011253357];
};

_vehicle_1729 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_cargo_cont_tiny", [12259.835, 9720.8877], [], 0, "CAN_COLLIDE"];
  _vehicle_1729 = _this;
  _this setDir -27.810463;
  _this setPos [12259.835, 9720.8877];
};

_vehicle_1730 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_cargo_cont_small", [12277.736, 9719.6719, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1730 = _this;
  _this setDir 167.05305;
  _this setPos [12277.736, 9719.6719, -1.5258789e-005];
};

_vehicle_1731 = objNull;
if (true) then
{
  _this = createVehicle ["UralWreck", [12226.641, 9699.6709, -5.7220459e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1731 = _this;
  _this setDir 78.426018;
  _this setPos [12226.641, 9699.6709, -5.7220459e-006];
};

_vehicle_1732 = objNull;
if (true) then
{
  _this = createVehicle ["HeliH", [12167.458, 9755.6064, 5.7220459e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1732 = _this;
  _this setPos [12167.458, 9755.6064, 5.7220459e-006];
};

_vehicle_1735 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CamoNetB_EAST", [12161.805, 9730.4541], [], 0, "CAN_COLLIDE"];
  _vehicle_1735 = _this;
  _this setDir 567.25;
  _this setPos [12161.805, 9730.4541];
};

_vehicle_1736 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_cargo_cont_small", [12165.407, 9731.9316, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1736 = _this;
  _this setDir 164.24104;
  _this setPos [12165.407, 9731.9316, -1.5258789e-005];
};

_vehicle_1739 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_cargo_cont_small2", [12160.449, 9732.7588], [], 0, "CAN_COLLIDE"];
  _vehicle_1739 = _this;
  _this setDir 62.633389;
  _this setPos [12160.449, 9732.7588];
};

_vehicle_1740 = objNull;
if (true) then
{
  _this = createVehicle ["UH1Wreck", [12189.186, 9759.3223, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1740 = _this;
  _this setDir -9.8494196;
  _this setPos [12189.186, 9759.3223, 1.5258789e-005];
};

_vehicle_1741 = objNull;
if (true) then
{
  _this = createVehicle ["hiluxWreck", [11111.739, 12320.616, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1741 = _this;
  _this setDir 143.36008;
  _this setPos [11111.739, 12320.616, -9.1552734e-005];
};

_vehicle_1742 = objNull;
if (true) then
{
  _this = createVehicle ["UAZWreck", [11132.784, 12303.335, 0.00018310547], [], 0, "CAN_COLLIDE"];
  _vehicle_1742 = _this;
  _this setPos [11132.784, 12303.335, 0.00018310547];
};

_vehicle_1743 = objNull;
if (true) then
{
  _this = createVehicle ["SKODAWreck", [11054.7, 12362.292, -0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_1743 = _this;
  _this setDir -71.190071;
  _this setPos [11054.7, 12362.292, -0.00012207031];
};

_vehicle_1744 = objNull;
if (true) then
{
  _this = createVehicle ["LADAWreck", [10904.222, 12415.188, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1744 = _this;
  _this setDir 76.201912;
  _this setPos [10904.222, 12415.188, -3.0517578e-005];
};

_vehicle_1746 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [10901.068, 12417.263, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1746 = _this;
  _this setDir 124.05824;
  _this setPos [10901.068, 12417.263, 6.1035156e-005];
};

_vehicle_1747 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Garb_Heap_EP1", [10804.949, 12438.814, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1747 = _this;
  _this setPos [10804.949, 12438.814, 1.5258789e-005];
};

_vehicle_1748 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_IronPipes_EP1", [10800.118, 12438.65, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1748 = _this;
  _this setPos [10800.118, 12438.65, 6.1035156e-005];
};

_vehicle_1749 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Garb_Heap_EP1", [10983.791, 12401.187, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1749 = _this;
  _this setPos [10983.791, 12401.187, -6.1035156e-005];
};

_vehicle_1750 = objNull;
if (true) then
{
  _this = createVehicle ["Camp_EP1", [10481.968, 2259.696, -5.2452087e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1750 = _this;
  _this setDir 53.016754;
  _this setPos [10481.968, 2259.696, -5.2452087e-006];
};

_vehicle_1751 = objNull;
if (true) then
{
  _this = createVehicle ["Camp_EP1", [10477.169, 2266.8623, 9.5367432e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1751 = _this;
  _this setDir 55.030605;
  _this setPos [10477.169, 2266.8623, 9.5367432e-006];
};

_vehicle_1768 = objNull;
if (true) then
{
  _this = createVehicle ["UralWreck", [8512.5771, 6675.4233, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1768 = _this;
  _this setDir 19.066412;
  _this setPos [8512.5771, 6675.4233, -3.0517578e-005];
};

_vehicle_1779 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_Stripes", [10140.888, 5449.8105, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1779 = _this;
  _this setPos [10140.888, 5449.8105, 1.5258789e-005];
};

_vehicle_1780 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Coil_EP1", [10140.171, 5453.8193, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1780 = _this;
  _this setPos [10140.171, 5453.8193, 4.5776367e-005];
};

_vehicle_1781 = objNull;
if (true) then
{
  _this = createVehicle ["SKODAWreck", [10103.114, 5482.0376, -7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1781 = _this;
  _this setDir -21.275578;
  _this setPos [10103.114, 5482.0376, -7.6293945e-005];
};

_vehicle_1782 = objNull;
if (true) then
{
  _this = createVehicle ["UralWreck", [10136.544, 5394.624, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1782 = _this;
  _this setDir 137.82121;
  _this setPos [10136.544, 5394.624, -3.0517578e-005];
};

_vehicle_1783 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [10049.719, 5481.998, 0.00019836426], [], 0, "CAN_COLLIDE"];
  _vehicle_1783 = _this;
  _this setDir 70.0802;
  _this setPos [10049.719, 5481.998, 0.00019836426];
};

_vehicle_1953 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrates_NoInteractive_Large", [5444.3599, 8457.2402, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1953 = _this;
  _this setPos [5444.3599, 8457.2402, -3.0517578e-005];
};

_vehicle_1968 = objNull;
if (true) then
{
  _this = createVehicle ["hiluxWreck", [3520.8496, 2540.1616, 1.0490417e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1968 = _this;
  _this setDir -54.37965;
  _this setPos [3520.8496, 2540.1616, 1.0490417e-005];
};

_vehicle_1969 = objNull;
if (true) then
{
  _this = createVehicle ["UralWreck", [4579.0381, 2536.0544, -8.5830688e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1969 = _this;
  _this setDir -111.32008;
  _this setPos [4579.0381, 2536.0544, -8.5830688e-006];
};

_vehicle_1971 = objNull;
if (true) then
{
  _this = createVehicle ["hiluxWreck", [5862.6831, 2180.4219, 4.7683716e-007], [], 0, "CAN_COLLIDE"];
  _vehicle_1971 = _this;
  _this setDir 109.58395;
  _this setPos [5862.6831, 2180.4219, 4.7683716e-007];
};

_vehicle_1972 = objNull;
if (true) then
{
  _this = createVehicle ["UAZWreck", [6449.5864, 2350.7102, 7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1972 = _this;
  _this setPos [6449.5864, 2350.7102, 7.6293945e-006];
};

_vehicle_1973 = objNull;
if (true) then
{
  _this = createVehicle ["CampEast", [6829.0649, 2470.7656, -7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1973 = _this;
  _this setDir -128.89926;
  _this setPos [6829.0649, 2470.7656, -7.6293945e-006];
};

_vehicle_1975 = objNull;
if (true) then
{
  _this = createVehicle ["CampEast", [6835.6865, 2463.095, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1975 = _this;
  _this setDir -129.04216;
  _this setPos [6835.6865, 2463.095, -1.5258789e-005];
};

_vehicle_1977 = objNull;
if (true) then
{
  _this = createVehicle ["PowGen_Big_EP1", [6821.603, 2477.0315, -8.5830688e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1977 = _this;
  _this setDir -145.72395;
  _this setPos [6821.603, 2477.0315, -8.5830688e-006];
};

_vehicle_1978 = objNull;
if (true) then
{
  _this = createVehicle ["PowGen_Big_EP1", [6646.8955, 2769.8455, -9.5367432e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1978 = _this;
  _this setDir 178.1658;
  _this setPos [6646.8955, 2769.8455, -9.5367432e-006];
};

_vehicle_1979 = objNull;
if (true) then
{
  _this = createVehicle ["USMC_WarfareBFieldhHospital", [6636.1284, 2779.6697, -3.2424927e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1979 = _this;
  _this setDir 135.19322;
  _this setPos [6636.1284, 2779.6697, -3.2424927e-005];
};

_vehicle_1980 = objNull;
if (true) then
{
  _this = createVehicle ["CampEast", [6649.6206, 2800.1421, 0.004932588], [], 0, "CAN_COLLIDE"];
  _vehicle_1980 = _this;
  _this setDir 49.046127;
  _this setPos [6649.6206, 2800.1421, 0.004932588];
};

_vehicle_1981 = objNull;
if (true) then
{
  _this = createVehicle ["UralWreck", [6691.7822, 2677.8582], [], 0, "CAN_COLLIDE"];
  _vehicle_1981 = _this;
  _this setPos [6691.7822, 2677.8582];
};

_vehicle_1982 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [7948.8335, 3185.4333, -8.1062317e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1982 = _this;
  _this setPos [7948.8335, 3185.4333, -8.1062317e-006];
};

_vehicle_1983 = objNull;
if (true) then
{
  _this = createVehicle ["Sign_Checkpoint_EP1", [10447.913, 2285.3291, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1983 = _this;
  _this setDir 74.616013;
  _this setPos [10447.913, 2285.3291, 3.8146973e-006];
};

_vehicle_1984 = objNull;
if (true) then
{
  _this = createVehicle ["Land_coneLight", [10444.809, 2282.2031], [], 0, "CAN_COLLIDE"];
  _vehicle_1984 = _this;
  _this setDir -152.48845;
  _this setPos [10444.809, 2282.2031];
};

_vehicle_1986 = objNull;
if (true) then
{
  _this = createVehicle ["Land_coneLight", [10438.419, 2274.8745, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1986 = _this;
  _this setPos [10438.419, 2274.8745, 3.8146973e-006];
};

_vehicle_1988 = objNull;
if (true) then
{
  _this = createVehicle ["Land_coneLight", [10441.994, 2278.8718, -4.196167e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1988 = _this;
  _this setDir 73.987068;
  _this setPos [10441.994, 2278.8718, -4.196167e-005];
};

_vehicle_1990 = objNull;
if (true) then
{
  _this = createVehicle ["datsun01Wreck", [12032.008, 9079.3369, 2.6702881e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1990 = _this;
  _this setDir 241.82253;
  _this setVehicleArmor 0.89999998;
  _this setPos [12032.008, 9079.3369, 2.6702881e-005];
};

_vehicle_2681 = objNull;
if (true) then
{
  _this = createVehicle ["CampEast", [6322.8242, 7833.5806, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2681 = _this;
  _this setDir 34.318134;
  _this setPos [6322.8242, 7833.5806, 3.0517578e-005];
};

_vehicle_2684 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CamoNetVar_EAST", [6335.0376, 7825.5825, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2684 = _this;
  _this setDir 33.755272;
  _this setPos [6335.0376, 7825.5825, 6.1035156e-005];
};

_vehicle_2685 = objNull;
if (true) then
{
  _this = createVehicle ["Barrels", [6332.7339, 7826.605], [], 0, "CAN_COLLIDE"];
  _vehicle_2685 = _this;
  _this setDir 17.463081;
  _this setPos [6332.7339, 7826.605];
};

_vehicle_2686 = objNull;
if (true) then
{
  _this = createVehicle ["Barrel4", [6330.4023, 7826.2031, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_2686 = _this;
  _this setPos [6330.4023, 7826.2031, 0];
};

_vehicle_2687 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Garb_Heap_EP1", [6357.2886, 7775.1851, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2687 = _this;
  _this setPos [6357.2886, 7775.1851, 3.0517578e-005];
};

_vehicle_2688 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [6354.8696, 7772.9985, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_2688 = _this;
  _this setPos [6354.8696, 7772.9985, 0];
};

_vehicle_2689 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish5", [6362.9312, 7779.0586, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2689 = _this;
  _this setDir -1.5778778;
  _this setPos [6362.9312, 7779.0586, 3.0517578e-005];
};

_vehicle_2690 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_GContainer_Big", [6375.8154, 7797.5459], [], 0, "CAN_COLLIDE"];
  _vehicle_2690 = _this;
  _this setDir 123.64489;
  _this setPos [6375.8154, 7797.5459];
};

_vehicle_2692 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_GContainer_Big", [6380.187, 7795.0234, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2692 = _this;
  _this setDir 123.64489;
  _this setPos [6380.187, 7795.0234, 3.0517578e-005];
};

_vehicle_2694 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [6172.7402, 7698.1172, 0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_2694 = _this;
  _this setPos [6172.7402, 7698.1172, 0.00012207031];
};

_vehicle_2695 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [5952.1489, 7955.5669, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2695 = _this;
  _this setPos [5952.1489, 7955.5669, -3.0517578e-005];
};

_vehicle_2696 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_corner", [5444.2705, 8454.9678, 0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_2696 = _this;
  _this setDir -24.759123;
  _this setPos [5444.2705, 8454.9678, 0.00012207031];
};

_vehicle_2697 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [5458.1162, 8451.6768, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2697 = _this;
  _this setPos [5458.1162, 8451.6768, -3.0517578e-005];
};

_vehicle_2698 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [5451.8418, 8467.9854, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_2698 = _this;
  _this setPos [5451.8418, 8467.9854, 0];
};

_vehicle_2699 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [5316.3916, 8605.7354, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2699 = _this;
  _this setPos [5316.3916, 8605.7354, 3.0517578e-005];
};

_vehicle_2700 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [5251.9526, 8624.1035, 0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_2700 = _this;
  _this setPos [5251.9526, 8624.1035, 0.00012207031];
};

_vehicle_2701 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [5178.1333, 8595.708, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_2701 = _this;
  _this setPos [5178.1333, 8595.708, 0];
};

_vehicle_2702 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [3841.5002, 8853.0596, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2702 = _this;
  _this setPos [3841.5002, 8853.0596, 3.0517578e-005];
};

_vehicle_2703 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [3764.2524, 8890.6074], [], 0, "CAN_COLLIDE"];
  _vehicle_2703 = _this;
  _this setPos [3764.2524, 8890.6074];
};

_vehicle_2712 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [4770.8188, 6719.5532, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2712 = _this;
  _this setPos [4770.8188, 6719.5532, -3.0517578e-005];
};

_vehicle_2713 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [2682.9783, 5131.813, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2713 = _this;
  _this setPos [2682.9783, 5131.813, 1.5258789e-005];
};

_vehicle_2714 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [2724.062, 5190.9478, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2714 = _this;
  _this setPos [2724.062, 5190.9478, 1.5258789e-005];
};

_vehicle_2715 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [2680.3643, 5450.0586, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2715 = _this;
  _this setDir 32.212994;
  _this setPos [2680.3643, 5450.0586, 1.5258789e-005];
};

_vehicle_2716 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_IronPipes_EP1", [2661.9106, 5512.8076, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2716 = _this;
  _this setDir 88.784981;
  _this setPos [2661.9106, 5512.8076, -3.0517578e-005];
};

_vehicle_2717 = objNull;
if (true) then
{
  _this = createVehicle ["RoadBarrier_light", [2661.1016, 5507.4854, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2717 = _this;
  _this setPos [2661.1016, 5507.4854, -1.5258789e-005];
};

_vehicle_2719 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [3620.8176, 2466.4312, 6.1988831e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_2719 = _this;
  _this setPos [3620.8176, 2466.4312, 6.1988831e-006];
};

_vehicle_2720 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [4450.6797, 2473.6011, -2.3841858e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_2720 = _this;
  _this setPos [4450.6797, 2473.6011, -2.3841858e-006];
};

_vehicle_2721 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [4510.0986, 2476.1375, -2.3841858e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_2721 = _this;
  _this setPos [4510.0986, 2476.1375, -2.3841858e-006];
};

_vehicle_2722 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [4521.3198, 2411.3245, 2.1934509e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2722 = _this;
  _this setPos [4521.3198, 2411.3245, 2.1934509e-005];
};

_vehicle_2723 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [4582.5605, 2434.447, -5.7220459e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_2723 = _this;
  _this setPos [4582.5605, 2434.447, -5.7220459e-006];
};

_vehicle_2724 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [6378.8037, 2410.3989, -9.5367432e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_2724 = _this;
  _this setDir -84.690536;
  _this setPos [6378.8037, 2410.3989, -9.5367432e-006];
};

_vehicle_2725 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_Stripes", [6376.7671, 2407.0825, 5.1498413e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2725 = _this;
  _this setDir -57.56461;
  _this setPos [6376.7671, 2407.0825, 5.1498413e-005];
};

_vehicle_2726 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [6496.8013, 2304.207, -4.2915344e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_2726 = _this;
  _this setDir -57.200989;
  _this setPos [6496.8013, 2304.207, -4.2915344e-006];
};

_vehicle_2727 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_corner", [6499.6255, 2300.6174, 8.1062317e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_2727 = _this;
  _this setDir 40.319649;
  _this setPos [6499.6255, 2300.6174, 8.1062317e-006];
};

_vehicle_2729 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_corner", [6504.3794, 2301.3748, -1.1920929e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2729 = _this;
  _this setDir -138.1368;
  _this setPos [6504.3794, 2301.3748, -1.1920929e-005];
};

_vehicle_2732 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_corner", [6550.0703, 2340.0981, -2.8610229e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_2732 = _this;
  _this setDir -230.1064;
  _this setPos [6550.0703, 2340.0981, -2.8610229e-006];
};

_vehicle_2734 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_corner", [6661.0322, 2380.6711, 6.6757202e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_2734 = _this;
  _this setDir -317.71753;
  _this setPos [6661.0322, 2380.6711, 6.6757202e-006];
};

_vehicle_2736 = objNull;
if (true) then
{
  _this = createVehicle ["CampEast", [6682.437, 2388.8083], [], 0, "CAN_COLLIDE"];
  _vehicle_2736 = _this;
  _this setDir 133.10553;
  _this setPos [6682.437, 2388.8083];
};

_vehicle_2737 = objNull;
if (true) then
{
  _this = createVehicle ["PowGen_Big_EP1", [6676.1338, 2369.3115, -8.5830688e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_2737 = _this;
  _this setDir 26.0415;
  _this setPos [6676.1338, 2369.3115, -8.5830688e-006];
};

_vehicle_2738 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrates_NoInteractive_Large", [6662.9199, 2380.1348, -6.2942505e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2738 = _this;
  _this setDir 15.1592;
  _this setPos [6662.9199, 2380.1348, -6.2942505e-005];
};

_vehicle_2739 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [6762.9761, 2464.6699, -1.9073486e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_2739 = _this;
  _this setPos [6762.9761, 2464.6699, -1.9073486e-006];
};

_vehicle_2740 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Fire_barrel_burning", [6825.4824, 2491.2407, 1.9073486e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2740 = _this;
  _this setPos [6825.4824, 2491.2407, 1.9073486e-005];
};

_vehicle_2741 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_corner", [6821.7896, 2485.1924, 1.335144e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2741 = _this;
  _this setDir -227.25845;
  _this setPos [6821.7896, 2485.1924, 1.335144e-005];
};

_vehicle_2743 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [6828.3657, 2507.1304, 2.5749207e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2743 = _this;
  _this setPos [6828.3657, 2507.1304, 2.5749207e-005];
};

_vehicle_2744 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [6790.3467, 2524.7664, -2.8610229e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_2744 = _this;
  _this setPos [6790.3467, 2524.7664, -2.8610229e-006];
};

_vehicle_2745 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [6773.2954, 2504.7729, -2.3841858e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_2745 = _this;
  _this setPos [6773.2954, 2504.7729, -2.3841858e-006];
};

_vehicle_2749 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [6695.8765, 2686.7915, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2749 = _this;
  _this setPos [6695.8765, 2686.7915, -3.0517578e-005];
};

_vehicle_2782 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [6551.3911, 2856.3306, -4.7683716e-007], [], 0, "CAN_COLLIDE"];
  _vehicle_2782 = _this;
  _this setDir 62.799068;
  _this setPos [6551.3911, 2856.3306, -4.7683716e-007];
};

_vehicle_2783 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [6556.9434, 2860.1023, -5.2928925e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2783 = _this;
  _this setPos [6556.9434, 2860.1023, -5.2928925e-005];
};

_vehicle_2784 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [6676.7524, 2798.1094, -5.3405762e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2784 = _this;
  _this setPos [6676.7524, 2798.1094, -5.3405762e-005];
};

_vehicle_2785 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [6676.644, 2759.9143, 9.5367432e-007], [], 0, "CAN_COLLIDE"];
  _vehicle_2785 = _this;
  _this setPos [6676.644, 2759.9143, 9.5367432e-007];
};

_vehicle_2786 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [6663.7466, 2750.0925, 9.5367432e-007], [], 0, "CAN_COLLIDE"];
  _vehicle_2786 = _this;
  _this setPos [6663.7466, 2750.0925, 9.5367432e-007];
};

_vehicle_2787 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [9617.8057, 2029.8103, -9.5367432e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_2787 = _this;
  _this setPos [9617.8057, 2029.8103, -9.5367432e-006];
};

_vehicle_2788 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [10006.392, 2066.9084, -9.5367432e-007], [], 0, "CAN_COLLIDE"];
  _vehicle_2788 = _this;
  _this setPos [10006.392, 2066.9084, -9.5367432e-007];
};

_vehicle_2789 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [10104.505, 2093.3853, 1.4305115e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_2789 = _this;
  _this setPos [10104.505, 2093.3853, 1.4305115e-006];
};

_vehicle_2791 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [10186.332, 2119.5483, -9.5367432e-007], [], 0, "CAN_COLLIDE"];
  _vehicle_2791 = _this;
  _this setPos [10186.332, 2119.5483, -9.5367432e-007];
};

_vehicle_2792 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [10302.525, 2148.7844, -9.5367432e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_2792 = _this;
  _this setPos [10302.525, 2148.7844, -9.5367432e-006];
};

_vehicle_2793 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [10371.683, 2192.8245, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2793 = _this;
  _this setPos [10371.683, 2192.8245, -1.5258789e-005];
};

_vehicle_2794 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [10395.785, 2227.7107, 9.5367432e-007], [], 0, "CAN_COLLIDE"];
  _vehicle_2794 = _this;
  _this setPos [10395.785, 2227.7107, 9.5367432e-007];
};

_vehicle_2795 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [10460.392, 2293.8872, -5.6266785e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2795 = _this;
  _this setPos [10460.392, 2293.8872, -5.6266785e-005];
};

_vehicle_2796 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [10561.671, 2379.2644, 1.9073486e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_2796 = _this;
  _this setPos [10561.671, 2379.2644, 1.9073486e-006];
};

_vehicle_2797 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [10590.189, 2371.2258, -9.5367432e-007], [], 0, "CAN_COLLIDE"];
  _vehicle_2797 = _this;
  _this setPos [10590.189, 2371.2258, -9.5367432e-007];
};

_vehicle_2798 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [10430.666, 2147.2227, -2.6702881e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2798 = _this;
  _this setPos [10430.666, 2147.2227, -2.6702881e-005];
};

_vehicle_2799 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [10430.135, 2103.3374, 4.3869019e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2799 = _this;
  _this setPos [10430.135, 2103.3374, 4.3869019e-005];
};

_vehicle_2801 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_Stripes", [10383.883, 2084.3369, 4.7683716e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_2801 = _this;
  _this setDir 55.684093;
  _this setPos [10383.883, 2084.3369, 4.7683716e-006];
};

_vehicle_2803 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [10494.764, 2380.8962, -2.3365021e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2803 = _this;
  _this setPos [10494.764, 2380.8962, -2.3365021e-005];
};

_vehicle_2804 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [10444.562, 2365.8403, 9.5367432e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_2804 = _this;
  _this setPos [10444.562, 2365.8403, 9.5367432e-006];
};

_vehicle_2805 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [9163.3789, 3778.8911, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2805 = _this;
  _this setPos [9163.3789, 3778.8911, 3.0517578e-005];
};

_vehicle_2806 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [9168.0977, 3796.9651, 7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2806 = _this;
  _this setPos [9168.0977, 3796.9651, 7.6293945e-005];
};

_vehicle_2807 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [10138.857, 5443.5454, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_2807 = _this;
  _this setPos [10138.857, 5443.5454, 0];
};

_vehicle_2808 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [10181.161, 5442.0391, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2808 = _this;
  _this setDir 48.51096;
  _this setPos [10181.161, 5442.0391, 4.5776367e-005];
};

_vehicle_2810 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [9766.4434, 8804.4609, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2810 = _this;
  _this setPos [9766.4434, 8804.4609, 3.0517578e-005];
};

_vehicle_2811 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [9601.0391, 8802.3447, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2811 = _this;
  _this setPos [9601.0391, 8802.3447, 6.1035156e-005];
};

_vehicle_2812 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [9551.7441, 8812.3135, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2812 = _this;
  _this setPos [9551.7441, 8812.3135, 3.0517578e-005];
};

_vehicle_2813 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [9519.7725, 8818.9082, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2813 = _this;
  _this setPos [9519.7725, 8818.9082, -3.0517578e-005];
};

_vehicle_2814 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [9430.9473, 8817.8857, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_2814 = _this;
  _this setPos [9430.9473, 8817.8857, 0];
};

_vehicle_2815 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [9450.9883, 8818.5225, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2815 = _this;
  _this setPos [9450.9883, 8818.5225, -3.0517578e-005];
};

_vehicle_2816 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [11919.413, 9099.8359, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2816 = _this;
  _this setPos [11919.413, 9099.8359, 1.5258789e-005];
};

_vehicle_2817 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [11945.195, 9132.4316, -2.2888184e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2817 = _this;
  _this setPos [11945.195, 9132.4316, -2.2888184e-005];
};

_vehicle_2818 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [12006.796, 9167.585, -1.9073486e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2818 = _this;
  _this setPos [12006.796, 9167.585, -1.9073486e-005];
};

_vehicle_2819 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [12030.865, 9105.6309, 3.4332275e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2819 = _this;
  _this setPos [12030.865, 9105.6309, 3.4332275e-005];
};

_vehicle_2820 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [11952.547, 9001.0146, 9.5367432e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2820 = _this;
  _this setPos [11952.547, 9001.0146, 9.5367432e-005];
};

_vehicle_2821 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [11912.95, 9092.4502, -3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_2821 = _this;
  _this setPos [11912.95, 9092.4502, -3.8146973e-006];
};

_vehicle_2822 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [12130.841, 9379.6836, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_2822 = _this;
  _this setPos [12130.841, 9379.6836, 0];
};

_vehicle_2823 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [11123.189, 12311.362, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_2823 = _this;
  _this setPos [11123.189, 12311.362, 0];
};

_vehicle_2824 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [10989.307, 12400.035, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2824 = _this;
  _this setPos [10989.307, 12400.035, 6.1035156e-005];
};

_vehicle_2825 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [10810.169, 12438.118, 0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_2825 = _this;
  _this setPos [10810.169, 12438.118, 0.00012207031];
};

_vehicle_2836 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [7133.9102, 7697.334, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2836 = _this;
  _this setPos [7133.9102, 7697.334, -3.0517578e-005];
};

_vehicle_2837 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [7119.9272, 7693.9482, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2837 = _this;
  _this setPos [7119.9272, 7693.9482, -3.0517578e-005];
};

_vehicle_2838 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [7027.5259, 7669.019, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2838 = _this;
  _this setPos [7027.5259, 7669.019, -3.0517578e-005];
};

_vehicle_2839 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [7090.5723, 7642.0806, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2839 = _this;
  _this setPos [7090.5723, 7642.0806, 6.1035156e-005];
};

_vehicle_2840 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [7247.5562, 7673.8857, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_2840 = _this;
  _this setPos [7247.5562, 7673.8857, 0];
};

_vehicle_2842 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [5860.8384, 4590.0498, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_2842 = _this;
  _this setPos [5860.8384, 4590.0498, 0];
};

_vehicle_2843 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [5854.7754, 4577.0024, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2843 = _this;
  _this setPos [5854.7754, 4577.0024, -4.5776367e-005];
};

_vehicle_2844 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [5854.9346, 4683.3433, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2844 = _this;
  _this setPos [5854.9346, 4683.3433, -3.0517578e-005];
};

_vehicle_2845 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [5846.3667, 4709.1807, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2845 = _this;
  _this setPos [5846.3667, 4709.1807, -3.0517578e-005];
};

_vehicle_2846 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [6067.8564, 7768.7422, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_2846 = _this;
  _this setPos [6067.8564, 7768.7422, 0];
};

_vehicle_2879 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [13463.633, 6321.7065, -8.1062317e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_2879 = _this;
  _this setPos [13463.633, 6321.7065, -8.1062317e-006];
};
};