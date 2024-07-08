import 'package:flutter/material.dart';
import 'package:taskmanagerwithapi/view/screens/NewTaskScreen/inner/task_summary_card.dart';

import '../../../../data/model/task_count_by_status_model.dart';


Widget buildSummarySection(List<TaskCountByStatusModel> taskCountByStatusModelList) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: taskCountByStatusModelList.map((e) {
        return TaskSummaryCard(
          count: e.sum.toString(),
          title: e.sId ?? 'Unknown',
        );
      }).toList(),
    ),
  );
}
