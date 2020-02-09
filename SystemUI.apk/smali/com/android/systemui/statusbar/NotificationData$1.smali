.class Lcom/android/systemui/statusbar/NotificationData$1;
.super Ljava/lang/Object;
.source "NotificationData.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/systemui/statusbar/NotificationData$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private final mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

.field private final mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationData;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationData;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    iget-object v4, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    const/4 v5, 0x3

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget v9, v9, Landroid/app/Notification;->semPriority:I

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v10

    iget v10, v10, Landroid/app/Notification;->semPriority:I

    iget-object v11, v0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    invoke-static {v11}, Lcom/android/systemui/statusbar/NotificationData;->access$000(Lcom/android/systemui/statusbar/NotificationData;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v11

    if-eqz v11, :cond_0

    iget-object v11, v0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v12, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    iget-object v13, v0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v11, v12, v13}, Lcom/android/systemui/statusbar/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    iget-object v11, v0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v12, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    iget-object v13, v0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v11, v12, v13}, Lcom/android/systemui/statusbar/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    iget-object v11, v0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v11}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result v5

    iget-object v11, v0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v11}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result v6

    iget-object v11, v0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v11}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v7

    iget-object v11, v0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v11}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v8

    :cond_0
    iget-object v11, v0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    invoke-static {v11}, Lcom/android/systemui/statusbar/NotificationData;->access$100(Lcom/android/systemui/statusbar/NotificationData;)Lcom/android/systemui/statusbar/NotificationData$Environment;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/systemui/statusbar/NotificationData$Environment;->getCurrentMediaNotificationKey()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const/4 v14, 0x1

    if-eqz v12, :cond_1

    if-le v5, v14, :cond_1

    move v12, v14

    goto :goto_0

    :cond_1
    const/4 v12, 0x0

    :goto_0
    iget-object v15, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    if-le v6, v14, :cond_2

    move v15, v14

    goto :goto_1

    :cond_2
    const/4 v15, 0x0

    :goto_1
    const/4 v13, 0x4

    if-lt v5, v13, :cond_3

    invoke-static {v3}, Lcom/android/systemui/statusbar/NotificationData;->access$200(Landroid/service/notification/StatusBarNotification;)Z

    move-result v17

    if-eqz v17, :cond_3

    move/from16 v17, v14

    goto :goto_2

    :cond_3
    const/16 v17, 0x0

    :goto_2
    move/from16 v18, v17

    if-lt v6, v13, :cond_4

    invoke-static {v4}, Lcom/android/systemui/statusbar/NotificationData;->access$200(Landroid/service/notification/StatusBarNotification;)Z

    move-result v13

    if-eqz v13, :cond_4

    move/from16 v16, v14

    goto :goto_3

    :cond_4
    const/16 v16, 0x0

    :goto_3
    move/from16 v13, v16

    iget-object v14, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v14

    move/from16 v19, v5

    iget-object v5, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v5

    const/16 v16, -0x1

    if-eq v14, v5, :cond_6

    if-eqz v14, :cond_5

    goto :goto_4

    :cond_5
    const/16 v16, 0x1

    :goto_4
    return v16

    :cond_6
    if-eqz v14, :cond_7

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    invoke-static {v5}, Lcom/android/systemui/statusbar/NotificationData;->access$300(Lcom/android/systemui/statusbar/NotificationData;)Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->compare(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result v5

    return v5

    :cond_7
    if-eq v9, v10, :cond_9

    if-le v9, v10, :cond_8

    goto :goto_5

    :cond_8
    const/16 v16, 0x1

    :goto_5
    return v16

    :cond_9
    if-eq v12, v15, :cond_b

    if-eqz v12, :cond_a

    goto :goto_6

    :cond_a
    const/16 v16, 0x1

    :goto_6
    return v16

    :cond_b
    move/from16 v5, v18

    if-eq v5, v13, :cond_d

    if-eqz v5, :cond_c

    goto :goto_7

    :cond_c
    const/16 v16, 0x1

    :goto_7
    return v16

    :cond_d
    if-eq v7, v8, :cond_e

    sub-int v16, v7, v8

    return v16

    :cond_e
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-wide v0, v0, Landroid/app/Notification;->when:J

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    move-object/from16 v20, v3

    iget-wide v2, v2, Landroid/app/Notification;->when:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    check-cast p2, Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationData$1;->compare(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result p1

    return p1
.end method
