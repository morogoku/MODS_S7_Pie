.class public Lcom/android/systemui/statusbar/notification/NotificationInflater;
.super Ljava/lang/Object;
.source "NotificationInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;,
        Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;,
        Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;,
        Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;,
        Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;
    }
.end annotation


# static fields
.field private static final EXECUTOR:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;

.field static final FLAG_REINFLATE_ALL:I = -0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final FLAG_REINFLATE_EXPANDED_VIEW:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static mSysuiContext:Landroid/content/Context;


# instance fields
.field private mCallback:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

.field private mIsChildInGroup:Z

.field private mIsLowPriority:Z

.field private mRedactAmbient:Z

.field private mRemoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field private final mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field private mUsesIncreasedHeadsUpHeight:Z

.field private mUsesIncreasedHeight:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;-><init>(Lcom/android/systemui/statusbar/notification/NotificationInflater$1;)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->EXECUTOR:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mSysuiContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;ILjava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)Z
    .locals 1

    invoke-static/range {p0 .. p5}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->finishIfDone(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;ILjava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Ljava/util/HashMap;Ljava/lang/Exception;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->handleInflationError(Ljava/util/HashMap;Ljava/lang/Exception;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;)V

    return-void
.end method

.method static synthetic access$2000(ILandroid/app/Notification$Builder;ZZZZZLandroid/content/Context;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    .locals 1

    invoke-static/range {p0 .. p8}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->createRemoteViews(ILandroid/app/Notification$Builder;ZZZZZLandroid/content/Context;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    move-result-object v0

    return-object v0
.end method

.method public static apply(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;ILcom/android/systemui/statusbar/ExpandableNotificationRow;ZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;)Landroid/os/CancellationSignal;
    .locals 32

    move-object/from16 v14, p0

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPublicLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTypoLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getKnoxLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v7, v0

    const/4 v15, 0x1

    and-int v0, p1, v15

    const/4 v6, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    invoke-static/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$200(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v0

    iget-object v1, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedContentView:Landroid/widget/RemoteViews;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->canReapplyRemoteView(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v0

    xor-int/lit8 v5, v0, 0x1

    new-instance v13, Lcom/android/systemui/statusbar/notification/NotificationInflater$1;

    invoke-direct {v13, v14}, Lcom/android/systemui/statusbar/notification/NotificationInflater$1;-><init>(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)V

    nop

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v16

    invoke-virtual {v11, v6}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v17

    move-object v0, v14

    move/from16 v1, p1

    move v2, v15

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v6, p4

    move-object/from16 v20, v7

    move-object/from16 v7, p5

    move-object/from16 v21, v8

    move-object v8, v12

    move-object/from16 v22, v9

    move-object v9, v11

    move-object/from16 v23, v10

    move-object/from16 v10, v16

    move-object/from16 v24, v11

    move-object/from16 v11, v17

    move-object/from16 v25, v12

    move-object/from16 v12, v20

    invoke-static/range {v0 .. v13}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->applyRemoteView(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;)V

    goto :goto_0

    :cond_0
    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    move-object/from16 v24, v11

    move-object/from16 v25, v12

    :goto_0
    const/4 v15, 0x2

    and-int v0, p1, v15

    if-eqz v0, :cond_1

    invoke-static/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$300(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$300(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v0

    move-object/from16 v12, v25

    iget-object v1, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedBigContentView:Landroid/widget/RemoteViews;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->canReapplyRemoteView(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v0

    const/4 v11, 0x1

    xor-int/lit8 v5, v0, 0x1

    new-instance v13, Lcom/android/systemui/statusbar/notification/NotificationInflater$2;

    invoke-direct {v13, v14}, Lcom/android/systemui/statusbar/notification/NotificationInflater$2;-><init>(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)V

    nop

    move-object/from16 v10, v24

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v16

    invoke-virtual {v10, v11}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v17

    move-object v0, v14

    move/from16 v1, p1

    move v2, v15

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object v8, v12

    move-object v9, v10

    move-object/from16 v26, v10

    move-object/from16 v10, v16

    move/from16 v16, v11

    move-object/from16 v11, v17

    move-object/from16 v27, v12

    move-object/from16 v12, v20

    invoke-static/range {v0 .. v13}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->applyRemoteView(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;)V

    goto :goto_1

    :cond_1
    move-object/from16 v26, v24

    move-object/from16 v27, v25

    const/16 v16, 0x1

    :goto_1
    const/4 v15, 0x4

    and-int v0, p1, v15

    if-eqz v0, :cond_2

    invoke-static/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$400(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$400(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v0

    move-object/from16 v12, v27

    iget-object v1, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedHeadsUpContentView:Landroid/widget/RemoteViews;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->canReapplyRemoteView(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v0

    xor-int/lit8 v5, v0, 0x1

    new-instance v13, Lcom/android/systemui/statusbar/notification/NotificationInflater$3;

    invoke-direct {v13, v14}, Lcom/android/systemui/statusbar/notification/NotificationInflater$3;-><init>(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)V

    nop

    move-object/from16 v11, v26

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object v10

    const/4 v0, 0x2

    invoke-virtual {v11, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v17

    move-object v0, v14

    move/from16 v1, p1

    move v2, v15

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object v8, v12

    move-object v9, v11

    move-object/from16 v18, v11

    move-object/from16 v11, v17

    move-object/from16 v28, v12

    move-object/from16 v12, v20

    invoke-static/range {v0 .. v13}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->applyRemoteView(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;)V

    goto :goto_2

    :cond_2
    move-object/from16 v18, v26

    move-object/from16 v28, v27

    :goto_2
    const/16 v15, 0x8

    and-int v0, p1, v15

    if-eqz v0, :cond_3

    invoke-static/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$500(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v0

    move-object/from16 v12, v28

    iget-object v1, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedPublicContentView:Landroid/widget/RemoteViews;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->canReapplyRemoteView(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v0

    xor-int/lit8 v5, v0, 0x1

    new-instance v13, Lcom/android/systemui/statusbar/notification/NotificationInflater$4;

    invoke-direct {v13, v14}, Lcom/android/systemui/statusbar/notification/NotificationInflater$4;-><init>(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)V

    nop

    move-object/from16 v11, v23

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v10

    const/4 v9, 0x0

    invoke-virtual {v11, v9}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v17

    move-object v0, v14

    move/from16 v1, p1

    move v2, v15

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object v8, v12

    move-object v9, v11

    move-object/from16 v19, v11

    move-object/from16 v11, v17

    move-object/from16 v29, v12

    move-object/from16 v12, v20

    invoke-static/range {v0 .. v13}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->applyRemoteView(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;)V

    goto :goto_3

    :cond_3
    move-object/from16 v19, v23

    move-object/from16 v29, v28

    :goto_3
    const/16 v15, 0x10

    and-int v0, p1, v15

    if-eqz v0, :cond_7

    if-eqz p3, :cond_4

    move-object/from16 v0, v19

    goto :goto_4

    :cond_4
    move-object/from16 v0, v18

    :goto_4
    move-object v12, v0

    invoke-static/range {p2 .. p3}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->canReapplyAmbient(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$600(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v0

    move-object/from16 v11, v29

    iget-object v1, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedAmbientContentView:Landroid/widget/RemoteViews;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->canReapplyRemoteView(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_5

    :cond_5
    const/4 v5, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v11, v29

    :goto_5
    move/from16 v5, v16

    :goto_6
    new-instance v13, Lcom/android/systemui/statusbar/notification/NotificationInflater$5;

    invoke-direct {v13, v14}, Lcom/android/systemui/statusbar/notification/NotificationInflater$5;-><init>(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)V

    nop

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/NotificationContentView;->getAmbientChild()Landroid/view/View;

    move-result-object v10

    const/4 v0, 0x4

    invoke-virtual {v12, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v23

    move-object v0, v14

    move/from16 v1, p1

    move v2, v15

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object v8, v11

    move-object v9, v12

    move-object/from16 v30, v11

    move-object/from16 v11, v23

    move-object/from16 v23, v12

    move-object/from16 v12, v20

    invoke-static/range {v0 .. v13}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->applyRemoteView(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;)V

    goto :goto_7

    :cond_7
    move-object/from16 v30, v29

    :goto_7
    const/16 v15, 0x20

    and-int v0, p1, v15

    if-eqz v0, :cond_8

    invoke-static/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$700(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v0

    move-object/from16 v12, v30

    iget-object v1, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedTypoContentView:Landroid/widget/RemoteViews;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->canReapplyRemoteView(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v0

    xor-int/lit8 v5, v0, 0x1

    new-instance v13, Lcom/android/systemui/statusbar/notification/NotificationInflater$6;

    invoke-direct {v13, v14}, Lcom/android/systemui/statusbar/notification/NotificationInflater$6;-><init>(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)V

    nop

    move-object/from16 v11, v22

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v10

    const/4 v9, 0x0

    invoke-virtual {v11, v9}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v22

    move-object v0, v14

    move/from16 v1, p1

    move v2, v15

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object v8, v12

    move-object v9, v11

    move-object/from16 v23, v11

    move-object/from16 v11, v22

    move-object/from16 v31, v12

    move-object/from16 v12, v20

    invoke-static/range {v0 .. v13}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->applyRemoteView(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;)V

    goto :goto_8

    :cond_8
    move-object/from16 v23, v22

    move-object/from16 v31, v30

    :goto_8
    const/16 v15, 0x40

    and-int v0, p1, v15

    if-eqz v0, :cond_9

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/KnoxStateMonitor;->isPersona(I)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$800(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v0

    move-object/from16 v12, v31

    iget-object v1, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedKnoxContentView:Landroid/widget/RemoteViews;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->canReapplyRemoteView(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v0

    xor-int/lit8 v5, v0, 0x1

    new-instance v13, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;

    invoke-direct {v13, v14}, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;-><init>(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)V

    nop

    move-object/from16 v11, v21

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v10

    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v16

    move-object v0, v14

    move/from16 v1, p1

    move v2, v15

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object v8, v12

    move-object v9, v11

    move-object/from16 v11, v16

    move-object/from16 v16, v12

    move-object/from16 v12, v20

    invoke-static/range {v0 .. v13}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->applyRemoteView(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;)V

    goto :goto_9

    :cond_9
    move-object/from16 v16, v31

    :goto_9
    move-object v0, v14

    move/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, p5

    move-object/from16 v4, p2

    move/from16 v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->finishIfDone(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;ILjava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)Z

    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    new-instance v1, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationInflater$YqX46rBxwrjWs1TkaBTYm0eniC8;

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationInflater$YqX46rBxwrjWs1TkaBTYm0eniC8;-><init>(Ljava/util/HashMap;)V

    invoke-virtual {v0, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    return-object v0
.end method

.method static applyRemoteView(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;)V
    .locals 19
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;",
            "II",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            "ZZ",
            "Landroid/widget/RemoteViews$OnClickHandler;",
            "Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            "Lcom/android/systemui/statusbar/NotificationContentView;",
            "Landroid/view/View;",
            "Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/CancellationSignal;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;",
            ")V"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p6

    move-object/from16 v13, p7

    move-object/from16 v12, p12

    invoke-virtual/range {p13 .. p13}, Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;->getRemoteView()Landroid/widget/RemoteViews;

    move-result-object v11

    if-eqz v13, :cond_1

    invoke-interface/range {p7 .. p7}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;->doInflateSynchronous()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p5, :cond_0

    :try_start_0
    iget-object v0, v15, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->packageContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v10, p9

    :try_start_1
    invoke-virtual {v11, v0, v10, v14}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setIsRootNamespace(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v9, p13

    :try_start_2
    invoke-virtual {v9, v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;->setResultView(Landroid/view/View;)V

    nop

    move-object/from16 v7, p3

    move-object/from16 v8, p10

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v10, p9

    :goto_0
    move-object/from16 v9, p13

    :goto_1
    move-object/from16 v7, p3

    move-object/from16 v8, p10

    goto :goto_3

    :cond_0
    move-object/from16 v10, p9

    move-object/from16 v9, p13

    iget-object v0, v15, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->packageContext:Landroid/content/Context;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-object/from16 v8, p10

    :try_start_3
    invoke-virtual {v11, v0, v8, v14}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    invoke-virtual/range {p11 .. p11}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->onReinflated()V

    const-class v0, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationColorPicker;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v7, p3

    :try_start_4
    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/NotificationColorPicker;->init(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :goto_2
    nop

    move-object/from16 v6, p8

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    move-object/from16 v7, p3

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_1

    :goto_3
    move-object/from16 v6, p8

    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-static {v12, v0, v1, v13}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->handleInflationError(Ljava/util/HashMap;Ljava/lang/Exception;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;)V

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/os/CancellationSignal;

    invoke-direct {v2}, Landroid/os/CancellationSignal;-><init>()V

    invoke-virtual {v12, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    return-void

    :cond_1
    move-object/from16 v7, p3

    move-object/from16 v6, p8

    move-object/from16 v10, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p13

    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationInflater$8;

    move-object v1, v0

    move/from16 v2, p5

    move-object v3, v9

    move-object/from16 v4, p11

    move-object v5, v7

    move-object v6, v12

    move/from16 v7, p2

    move-object v8, v15

    move/from16 v9, p1

    move-object v10, v13

    move-object/from16 v17, v11

    move/from16 v11, p4

    move-object/from16 v12, p10

    move-object/from16 v13, v17

    move-object/from16 v14, p9

    move-object/from16 v15, p6

    move-object/from16 v16, p8

    invoke-direct/range {v1 .. v16}, Lcom/android/systemui/statusbar/notification/NotificationInflater$8;-><init>(ZLcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Ljava/util/HashMap;ILcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;ILcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;ZLandroid/view/View;Landroid/widget/RemoteViews;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    move-object v5, v0

    if-eqz p5, :cond_2

    move-object/from16 v12, p0

    iget-object v2, v12, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->packageContext:Landroid/content/Context;

    sget-object v4, Lcom/android/systemui/statusbar/notification/NotificationInflater;->EXECUTOR:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;

    move-object/from16 v1, v17

    move-object/from16 v3, p9

    move-object/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Landroid/widget/RemoteViews;->applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/os/CancellationSignal;

    move-result-object v0

    goto :goto_5

    :cond_2
    move-object/from16 v12, p0

    iget-object v7, v12, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->packageContext:Landroid/content/Context;

    sget-object v9, Lcom/android/systemui/statusbar/notification/NotificationInflater;->EXECUTOR:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;

    move-object/from16 v6, v17

    move-object/from16 v8, p10

    move-object v10, v5

    move-object/from16 v11, p6

    invoke-virtual/range {v6 .. v11}, Landroid/widget/RemoteViews;->reapplyAsync(Landroid/content/Context;Landroid/view/View;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/os/CancellationSignal;

    move-result-object v0

    :goto_5
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, p12

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static canReapplyAmbient(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPublicLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getAmbientChild()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method static canReapplyRemoteView(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-nez p0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->isReapplyDisallowed()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static createContentView(Landroid/app/Notification$Builder;ZZ)Landroid/widget/RemoteViews;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->makeLowPriorityContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->createContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method private static createExpandedView(Landroid/app/Notification$Builder;Z)Landroid/widget/RemoteViews;
    .locals 2

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createBigContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-static {v1}, Landroid/app/Notification$Builder;->makeHeaderExpanded(Landroid/widget/RemoteViews;)V

    return-object v1

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private static createRemoteViews(ILandroid/app/Notification$Builder;ZZZZZLandroid/content/Context;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    .locals 5

    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    if-nez p3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    move p2, v3

    and-int/lit8 v3, p0, 0x1

    if-eqz v3, :cond_1

    invoke-static {p1, p2, p4}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->createContentView(Landroid/app/Notification$Builder;ZZ)Landroid/widget/RemoteViews;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$202(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    :cond_1
    and-int/lit8 v3, p0, 0x2

    if-eqz v3, :cond_2

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->createExpandedView(Landroid/app/Notification$Builder;Z)Landroid/widget/RemoteViews;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$302(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    :cond_2
    and-int/lit8 v3, p0, 0x4

    if-eqz v3, :cond_3

    invoke-virtual {p1, p5}, Landroid/app/Notification$Builder;->createHeadsUpContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$402(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    :cond_3
    and-int/lit8 v3, p0, 0x8

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->makePublicContentView()Landroid/widget/RemoteViews;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$502(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    :cond_4
    and-int/lit8 v3, p0, 0x10

    if-eqz v3, :cond_6

    if-eqz p6, :cond_5

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->makePublicAmbientNotification()Landroid/widget/RemoteViews;

    move-result-object v3

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->makeAmbientNotification()Landroid/widget/RemoteViews;

    move-result-object v3

    :goto_1
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$602(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    :cond_6
    and-int/lit8 v3, p0, 0x20

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    invoke-virtual {p8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->isColorized()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v3, v4, Landroid/app/Notification;->color:I

    :cond_7
    sget-object v4, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mSysuiContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->makeTypoNotification(Landroid/content/Context;I)Landroid/widget/RemoteViews;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$702(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    :cond_8
    and-int/lit8 v3, p0, 0x40

    if-eqz v3, :cond_9

    const-class v3, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {p8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/KnoxStateMonitor;->isPersona(I)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {p8, p7}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->makeKnoxNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$802(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    :cond_9
    iput-object p7, v0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->packageContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->getHeadsUpStatusBarText(Z)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$902(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->getHeadsUpStatusBarText(Z)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$1002(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-object v0
.end method

.method private static finishIfDone(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;ILjava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/CancellationSignal;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            "Z)Z"
        }
    .end annotation

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v3

    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPublicLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v4

    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTypoLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v5

    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getKnoxLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v6

    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_16

    and-int/lit8 v7, p1, 0x1

    const/4 v9, 0x1

    if-eqz v7, :cond_2

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$1100(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$1100(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    :cond_0
    iget-object v7, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v10

    iget-object v11, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v11

    iget-object v11, v11, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-static {v7, v10, v11}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->isCustomNotification(Landroid/app/Notification;Landroid/view/View;Landroid/widget/RemoteViews;)Z

    move-result v7

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIsCustomNotification(Z)V

    iget-object v10, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedContentView:Landroid/widget/RemoteViews;

    if-nez v10, :cond_1

    move v10, v9

    goto :goto_0

    :cond_1
    move v10, v8

    :goto_0
    invoke-virtual {v1, v10}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIsNewNotification(Z)V

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$200(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v7

    iput-object v7, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedContentView:Landroid/widget/RemoteViews;

    :cond_2
    and-int/lit8 v7, p1, 0x2

    const/4 v10, 0x0

    if-eqz v7, :cond_6

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$1200(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$1200(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/NotificationContentView;->setExpandedChild(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$300(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v7

    if-nez v7, :cond_4

    invoke-virtual {v3, v10}, Lcom/android/systemui/statusbar/NotificationContentView;->setExpandedChild(Landroid/view/View;)V

    :cond_4
    :goto_1
    iget-object v7, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v11

    iget-object v12, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v12

    iget-object v12, v12, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-static {v7, v11, v12}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->isCustomNotification(Landroid/app/Notification;Landroid/view/View;Landroid/widget/RemoteViews;)Z

    move-result v7

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIsCustomBigNotification(Z)V

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$300(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v7

    iput-object v7, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedBigContentView:Landroid/widget/RemoteViews;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$300(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v7

    if-eqz v7, :cond_5

    move v8, v9

    nop

    :cond_5
    invoke-virtual {v1, v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setExpandable(Z)V

    :cond_6
    and-int/lit8 v7, p1, 0x4

    if-eqz v7, :cond_9

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$1300(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$1300(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/NotificationContentView;->setHeadsUpChild(Landroid/view/View;)V

    goto :goto_2

    :cond_7
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$400(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v7

    if-nez v7, :cond_8

    invoke-virtual {v3, v10}, Lcom/android/systemui/statusbar/NotificationContentView;->setHeadsUpChild(Landroid/view/View;)V

    :cond_8
    :goto_2
    iget-object v7, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object v8

    iget-object v11, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v11

    iget-object v11, v11, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-static {v7, v8, v11}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->isCustomNotification(Landroid/app/Notification;Landroid/view/View;Landroid/widget/RemoteViews;)Z

    move-result v7

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIsCustomHeadsupNotification(Z)V

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$400(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v7

    iput-object v7, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedHeadsUpContentView:Landroid/widget/RemoteViews;

    :cond_9
    and-int/lit8 v7, p1, 0x8

    if-eqz v7, :cond_c

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$1400(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$1400(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    :cond_a
    iget-object v7, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v7, v7, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v7, :cond_b

    iget-object v7, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v7, v7, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v8

    iget-object v11, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v11

    iget-object v11, v11, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    iget-object v11, v11, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-static {v7, v8, v11}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->isCustomNotification(Landroid/app/Notification;Landroid/view/View;Landroid/widget/RemoteViews;)Z

    move-result v7

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIsCustomPublicNotification(Z)V

    :cond_b
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$500(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v7

    iput-object v7, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedPublicContentView:Landroid/widget/RemoteViews;

    :cond_c
    and-int/lit8 v7, p1, 0x10

    if-eqz v7, :cond_10

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$1500(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_f

    if-eqz p5, :cond_d

    move-object v7, v4

    goto :goto_3

    :cond_d
    move-object v7, v3

    :goto_3
    if-nez p5, :cond_e

    move-object v8, v4

    goto :goto_4

    :cond_e
    move-object v8, v3

    :goto_4
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$1500(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/android/systemui/statusbar/NotificationContentView;->setAmbientChild(Landroid/view/View;)V

    invoke-virtual {v8, v10}, Lcom/android/systemui/statusbar/NotificationContentView;->setAmbientChild(Landroid/view/View;)V

    :cond_f
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$600(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v7

    iput-object v7, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedAmbientContentView:Landroid/widget/RemoteViews;

    :cond_10
    and-int/lit8 v7, p1, 0x20

    if-eqz v7, :cond_12

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$1600(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_11

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$1600(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    :cond_11
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$700(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v7

    iput-object v7, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedTypoContentView:Landroid/widget/RemoteViews;

    :cond_12
    and-int/lit8 v7, p1, 0x40

    if-eqz v7, :cond_14

    const-class v7, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v7}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v8

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/systemui/KnoxStateMonitor;->isPersona(I)Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$1700(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_13

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$1700(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    :cond_13
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$800(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v7

    iput-object v7, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedKnoxContentView:Landroid/widget/RemoteViews;

    :cond_14
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$900(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->headsUpStatusBarText:Ljava/lang/CharSequence;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$1000(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->headsUpStatusBarTextPublic:Ljava/lang/CharSequence;

    if-eqz v0, :cond_15

    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v7

    invoke-interface {v0, v7}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;->onAsyncInflationFinished(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    :cond_15
    return v9

    :cond_16
    return v8
.end method

.method private static handleInflationError(Ljava/util/HashMap;Ljava/lang/Exception;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/CancellationSignal;",
            ">;",
            "Ljava/lang/Exception;",
            "Landroid/service/notification/StatusBarNotification;",
            "Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationInflater$POlPJz26zF5Nt5Z2kVGSqFxN8Co;->INSTANCE:Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationInflater$POlPJz26zF5Nt5Z2kVGSqFxN8Co;

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    if-eqz p3, :cond_0

    invoke-interface {p3, p2, p1}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;->handleInflationException(Landroid/service/notification/StatusBarNotification;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method private static isCustomNotification(Landroid/app/Notification;Landroid/view/View;Landroid/widget/RemoteViews;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-eqz p2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->isDecorateNotification(Landroid/app/Notification;)Z

    move-result v3

    if-nez v3, :cond_3

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x102053a

    if-eq v4, v5, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x10203ee

    if-eq v4, v5, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_2

    :cond_3
    :goto_1
    move v0, v1

    :goto_2
    return v0
.end method

.method private static isDecorateNotification(Landroid/app/Notification;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    invoke-virtual {p0}, Landroid/app/Notification;->getNotificationStyle()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/app/Notification$DecoratedCustomViewStyle;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-class v1, Landroid/app/Notification$DecoratedMediaCustomViewStyle;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public static synthetic lambda$POlPJz26zF5Nt5Z2kVGSqFxN8Co(Landroid/os/CancellationSignal;)V
    .locals 0

    invoke-virtual {p0}, Landroid/os/CancellationSignal;->cancel()V

    return-void
.end method

.method static synthetic lambda$apply$0(Ljava/util/HashMap;)V
    .locals 2

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationInflater$POlPJz26zF5Nt5Z2kVGSqFxN8Co;->INSTANCE:Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationInflater$POlPJz26zF5Nt5Z2kVGSqFxN8Co;

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static makeKnoxNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 9

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v2

    const-class v3, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v3, v2}, Lcom/android/systemui/KnoxStateMonitor;->getKnoxName(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const v6, 0x7f120aec

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getContext()Landroid/content/Context;

    move-result-object v7

    new-array v5, v5, [Ljava/lang/Object;

    const-string v8, "Knox"

    aput-object v8, v5, v4

    invoke-virtual {v7, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getContext()Landroid/content/Context;

    move-result-object v7

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v4

    invoke-virtual {v7, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v5

    const v6, 0x104062c

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.showWhen"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v5, v5, Landroid/app/Notification;->color:I

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v5, v5, Landroid/app/Notification;->color:I

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    :cond_1
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v5

    return-object v5
.end method

.method private static makeTypoNotification(Landroid/content/Context;I)Landroid/widget/RemoteViews;
    .locals 3

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d0149

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const-string/jumbo v1, "setBackgroundColor"

    const v2, 0x7f0a057d

    invoke-virtual {v0, v2, v1, p1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method inflateNotificationViews(ILandroid/app/Notification$Builder;Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    .locals 16
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mIsLowPriority:Z

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mIsChildInGroup:Z

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mUsesIncreasedHeight:Z

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mUsesIncreasedHeadsUpHeight:Z

    iget-boolean v7, v0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRedactAmbient:Z

    iget-object v9, v0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v8, p3

    invoke-static/range {v1 .. v9}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->createRemoteViews(ILandroid/app/Notification$Builder;ZZZZZLandroid/content/Context;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    move-result-object v1

    iget-object v12, v0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRedactAmbient:Z

    iget-object v14, v0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRemoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    const/4 v15, 0x0

    move-object v10, v1

    move/from16 v11, p1

    invoke-static/range {v10 .. v15}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->apply(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;ILcom/android/systemui/statusbar/ExpandableNotificationRow;ZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;)Landroid/os/CancellationSignal;

    return-object v1
.end method

.method public inflateNotificationViews()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->inflateNotificationViews(I)V

    return-void
.end method

.method inflateNotificationViews(I)V
    .locals 14
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NotificationInflater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "already removed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    new-instance v13, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mIsLowPriority:Z

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mIsChildInGroup:Z

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mUsesIncreasedHeight:Z

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mUsesIncreasedHeadsUpHeight:Z

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRedactAmbient:Z

    iget-object v10, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mCallback:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

    iget-object v11, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRemoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    const/4 v12, 0x0

    move-object v1, v13

    move-object v2, v0

    move v3, p1

    invoke-direct/range {v1 .. v12}, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;-><init>(Landroid/service/notification/StatusBarNotification;ILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZZZZLcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Landroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$1;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mCallback:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mCallback:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;->doInflateSynchronous()Z

    move-result v2

    if-eqz v2, :cond_1

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->doInBackground([Ljava/lang/Void;)Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->onPostExecute(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)V

    goto :goto_0

    :cond_1
    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedAmbientContentView:Landroid/widget/RemoteViews;

    iput-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedBigContentView:Landroid/widget/RemoteViews;

    iput-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedContentView:Landroid/widget/RemoteViews;

    iput-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedHeadsUpContentView:Landroid/widget/RemoteViews;

    iput-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedPublicContentView:Landroid/widget/RemoteViews;

    iput-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedTypoContentView:Landroid/widget/RemoteViews;

    iput-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedKnoxContentView:Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->inflateNotificationViews()V

    return-void
.end method

.method public setInflationCallback(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mCallback:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

    return-void
.end method

.method public setIsChildInGroup(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mIsChildInGroup:Z

    if-eq p1, v0, :cond_1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mIsChildInGroup:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mIsLowPriority:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    const-class v1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitor;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/KnoxStateMonitor;->isPersona(I)Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x40

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->inflateNotificationViews(I)V

    :cond_1
    return-void
.end method

.method public setIsLowPriority(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mIsLowPriority:Z

    return-void
.end method

.method public setRedactAmbient(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRedactAmbient:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRedactAmbient:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->inflateNotificationViews(I)V

    :cond_1
    return-void
.end method

.method public setRemoteViewClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRemoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    return-void
.end method

.method public setUsesIncreasedHeadsUpHeight(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mUsesIncreasedHeadsUpHeight:Z

    return-void
.end method

.method public setUsesIncreasedHeight(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mUsesIncreasedHeight:Z

    return-void
.end method
