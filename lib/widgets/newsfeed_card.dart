import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_villanueva_1/constant.dart';
import 'package:flutter_villanueva_1/widgets/custom_text.dart';
import 'package:material_ui/material_ui.dart';

class NewsfeedCard extends StatelessWidget {
  const NewsfeedCard({
    super.key,
    required this.userName,
    required this.postContent,
    required this.date,
    this.numOfLikes = 0,
    this.imageAsset,
  });

  final String userName;
  final String postContent;
  final String date;
  final int numOfLikes;
  final String? imageAsset;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10.sp),
      child: Padding(
        padding: EdgeInsets.all(10.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.person),
                SizedBox(width: 10.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: userName,
                        fontSize: 15.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      Row(
                        children: [
                          CustomText(
                            text: date,
                            fontSize: 12.sp,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 3.w),
                          Icon(Icons.public, color: Colors.grey, size: 15.sp),
                        ],
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.more_horiz),
              ],
            ),
            SizedBox(height: 5.h),
            CustomText(
              text: postContent,
              fontSize: 12.sp,
              color: Colors.black,
            ),
            SizedBox(height: 5.h),
            if (imageAsset != null)
              Image.asset(
                imageAsset!,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.thumb_up, color: fbPrimary),
                  label: CustomText(
                    text: numOfLikes.toString(),
                    fontSize: 12.sp,
                    color: fbDarkPrimary,
                  ),
                ),
                CustomText(
                  text: 'Comment',
                  fontSize: 12.sp,
                  color: fbDarkPrimary,
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.redo),
                  label: CustomText(
                    text: 'Share',
                    fontSize: 12.sp,
                    color: fbDarkPrimary,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Icon(Icons.person),
                SizedBox(width: 10.w),
                Expanded(
                  child: Container(
                    height: 25.h,
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10.sp),
                    ),
                    child: CustomText(
                      text: 'Write a comment...',
                      fontSize: 11.sp,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            CustomText(
              text: 'View all comments',
              fontSize: 12.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
