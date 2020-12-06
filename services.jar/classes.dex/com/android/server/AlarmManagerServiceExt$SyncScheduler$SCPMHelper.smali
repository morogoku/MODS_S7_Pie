.class Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;
.super Ljava/lang/Object;
.source "AlarmManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SCPMHelper"
.end annotation


# static fields
.field public static final ACTION_UPDATE_SCPM:Ljava/lang/String; = "sec.app.policy.UPDATE.AppsyncPolicy"

.field public static final APPSYNC_POLICY_SCPM_NAME:Ljava/lang/String; = "AppsyncPolicy"


# instance fields
.field private final AUTHORITY_SCPM:Ljava/lang/String;

.field private final AUTHORITY_SCPM_URI:Landroid/net/Uri;

.field private final CATEGORY_SUSPICIOUSPACKAGES:Ljava/lang/String;

.field private final CATEGORY_SUSPICIOUSTIMETHRESHOLD:Ljava/lang/String;

.field private final CONTENT_SCPM_URI:Landroid/net/Uri;

.field private final POLICY_CATEGORY:Ljava/lang/String;

.field private final POLICY_ITEMS:[Ljava/lang/String;

.field private final POLICY_ITEM_PRIMARY:Ljava/lang/String;

.field private final POLICY_SCPM_PROJECTION:[Ljava/lang/String;

.field private final POLICY_SCPM_URI:Landroid/net/Uri;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCtx:Landroid/content/Context;

.field final synthetic this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Landroid/content/Context;)V
    .registers 10

    iput-object p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CAT_SUSP_MILLIS"

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->CATEGORY_SUSPICIOUSTIMETHRESHOLD:Ljava/lang/String;

    const-string v0, "CAT_SUSP_PKGS"

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->CATEGORY_SUSPICIOUSPACKAGES:Ljava/lang/String;

    const-string/jumbo v0, "item"

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->POLICY_ITEM_PRIMARY:Ljava/lang/String;

    const-string/jumbo v1, "item"

    const-string v2, "data1"

    const-string v3, "data2"

    const-string v4, "data3"

    const-string v5, "data4"

    const-string v6, "data5"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->POLICY_ITEMS:[Ljava/lang/String;

    const-string v0, "category"

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->POLICY_CATEGORY:Ljava/lang/String;

    const-string v0, "com.samsung.android.sm.policy"

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->AUTHORITY_SCPM:Ljava/lang/String;

    const-string v0, "content://com.samsung.android.sm.policy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->AUTHORITY_SCPM_URI:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->AUTHORITY_SCPM_URI:Landroid/net/Uri;

    const-string/jumbo v1, "policy_item"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->CONTENT_SCPM_URI:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->CONTENT_SCPM_URI:Landroid/net/Uri;

    const-string v1, "AppsyncPolicy"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->POLICY_SCPM_URI:Landroid/net/Uri;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->POLICY_ITEMS:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->POLICY_ITEMS:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->POLICY_ITEMS:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->POLICY_ITEMS:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->POLICY_ITEMS:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->POLICY_ITEMS:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    aput-object v1, v0, v2

    const-string v1, "category"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->POLICY_SCPM_PROJECTION:[Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->mCtx:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public getSuspiciousTagFromSCPM()Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "CAT_SUSP_PKGS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->POLICY_SCPM_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->POLICY_SCPM_PROJECTION:[Ljava/lang/String;

    const-string v4, "category = ?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_25

    # getter for: Lcom/android/server/AlarmManagerServiceExt;->DEBUG_MID:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$1400()Z

    move-result v2

    if-eqz v2, :cond_24

    const-string v2, "AlarmManagerEXT"

    const-string/jumbo v3, "get pkg from DB : No Entry"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    return-object v1

    :cond_25
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_2a
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6d

    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->POLICY_ITEMS:[Ljava/lang/String;

    array-length v4, v3

    const/4 v6, 0x0

    :goto_34
    if-ge v6, v4, :cond_2a

    aget-object v7, v3, v6

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    if-gez v8, :cond_4d

    # getter for: Lcom/android/server/AlarmManagerServiceExt;->DEBUG_MID:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$1400()Z

    move-result v9

    if-eqz v9, :cond_6a

    const-string v9, "AlarmManagerEXT"

    const-string/jumbo v10, "get pkg from DB : There is no Column"

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a

    :cond_4d
    :try_start_4d
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_51} :catch_52

    goto :goto_55

    :catch_52
    move-exception v9

    nop

    move-object v9, v1

    :goto_55
    if-eqz v9, :cond_6a

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_60

    goto :goto_6a

    :cond_60
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    const/4 v11, -0x1

    # invokes: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->getPackageTag(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v10, v9, v11}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$3400(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6a
    :goto_6a
    add-int/lit8 v6, v6, 0x1

    goto :goto_34

    :cond_6d
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v2
.end method

.method public getSuspiciousTimeLimitFromSCPM()J
    .registers 8

    const-string v0, "CAT_SUSP_MILLIS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->POLICY_SCPM_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->POLICY_SCPM_PROJECTION:[Ljava/lang/String;

    const-string v4, "category = ?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_26

    # getter for: Lcom/android/server/AlarmManagerServiceExt;->DEBUG_MID:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$1400()Z

    move-result v3

    if-eqz v3, :cond_25

    const-string v3, "AlarmManagerEXT"

    const-string/jumbo v4, "get Time from DB : No Entry"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    return-wide v1

    :cond_26
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_3e

    # getter for: Lcom/android/server/AlarmManagerServiceExt;->DEBUG_MID:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$1400()Z

    move-result v3

    if-eqz v3, :cond_3a

    const-string v3, "AlarmManagerEXT"

    const-string/jumbo v4, "get Time from DB : No Item"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-wide v1

    :cond_3e
    const-string/jumbo v3, "item"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_59

    # getter for: Lcom/android/server/AlarmManagerServiceExt;->DEBUG_MID:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$1400()Z

    move-result v4

    if-eqz v4, :cond_55

    const-string v4, "AlarmManagerEXT"

    const-string/jumbo v6, "get Time from DB : There is no column"

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-wide v1

    :cond_59
    :try_start_59
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5d} :catch_66
    .catchall {:try_start_59 .. :try_end_5d} :catchall_61

    :goto_5d
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_6a

    :catchall_61
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :catch_66
    move-exception v1

    const-wide/16 v1, -0x1

    goto :goto_5d

    :goto_6a
    nop

    return-wide v1
.end method

.method public isSCPMAvailable()Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->mCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.sm.policy"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_11

    const/4 v2, 0x1

    nop

    :cond_11
    return v2
.end method
