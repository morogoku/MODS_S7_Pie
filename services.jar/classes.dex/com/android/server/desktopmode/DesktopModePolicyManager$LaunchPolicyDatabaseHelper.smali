.class Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DesktopModePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DesktopModePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LaunchPolicyDatabaseHelper"
.end annotation


# static fields
.field private static final LAUNCH_POLICY_DATABASE_PATH:Ljava/lang/String; = "/data/user/0/com.sec.android.app.desktoplauncher/databases/DexPkgList.db"

.field private static final LAUNCH_POLICY_DATABASE_VERSION:I = 0x1

.field private static launchPolicyDatabaseHelper:Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;


# instance fields
.field private final LAUNCH_POLICY_COLUMN:Ljava/lang/String;

.field private final LAUNCH_POLICY_DATABASE_TABLE:Ljava/lang/String;

.field private final LAUNCH_POLICY_DATABASE_VERSION_TABLE:Ljava/lang/String;

.field private final LAUNCH_POLICY_NAME_COLUMN:Ljava/lang/String;

.field private final LAUNCH_POLICY_PACKAGE_COLUMN:Ljava/lang/String;

.field private final LAUNCH_POLICY_REASON_COLUMN:Ljava/lang/String;

.field private final LAUNCH_POLICY_VERSION_COLUMN:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;->launchPolicyDatabaseHelper:Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "/data/user/0/com.sec.android.app.desktoplauncher/databases/DexPkgList.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const-string v0, "LaunchPackageList"

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;->LAUNCH_POLICY_DATABASE_TABLE:Ljava/lang/String;

    const-string/jumbo v0, "packagename"

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;->LAUNCH_POLICY_PACKAGE_COLUMN:Ljava/lang/String;

    const-string/jumbo v0, "mode"

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;->LAUNCH_POLICY_COLUMN:Ljava/lang/String;

    const-string/jumbo v0, "policyname"

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;->LAUNCH_POLICY_NAME_COLUMN:Ljava/lang/String;

    const-string v0, "LaunchPackageVersion"

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;->LAUNCH_POLICY_DATABASE_VERSION_TABLE:Ljava/lang/String;

    const-string/jumbo v0, "reason"

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;->LAUNCH_POLICY_REASON_COLUMN:Ljava/lang/String;

    const-string/jumbo v0, "version"

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;->LAUNCH_POLICY_VERSION_COLUMN:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;->checkDatabase()Z

    move-result v0

    return v0
.end method

.method private static checkDatabase()Z
    .registers 4

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/user/0/com.sec.android.app.desktoplauncher/databases/DexPkgList.db"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v0, 0x1

    goto :goto_1a

    :cond_10
    const/4 v0, 0x0

    # getter for: Lcom/android/server/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "checkDatabase. There\'s no DB exist. or can not access."

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1a
    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;
    .registers 2

    sget-object v0, Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;->launchPolicyDatabaseHelper:Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;->launchPolicyDatabaseHelper:Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;

    :cond_b
    sget-object v0, Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;->launchPolicyDatabaseHelper:Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;

    return-object v0
.end method


# virtual methods
.method protected getLaunchPolicyDatabase(I)Landroid/util/ArrayMap;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    # getter for: Lcom/android/server/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In getLaunchPolicyDatabase : Display - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;->checkDatabase()Z

    move-result v3

    if-nez v3, :cond_26

    return-object v0

    :cond_26
    if-nez v2, :cond_37

    :try_start_28
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    move-object v2, v3

    goto :goto_37

    :catchall_2e
    move-exception v3

    goto/16 :goto_105

    :catch_31
    move-exception v3

    goto/16 :goto_db

    :catch_34
    move-exception v3

    goto/16 :goto_f0

    :cond_37
    :goto_37
    if-eqz v2, :cond_112

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "LaunchPackageList"

    const-string/jumbo v3, "packagename"

    const-string/jumbo v4, "mode"

    const-string/jumbo v6, "policyname"

    filled-new-array {v3, v4, v6}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, v2

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v1, v3

    if-eqz v1, :cond_112

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_112

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v3, 0x0

    move v4, v3

    :goto_63
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_112

    const/4 v5, 0x2

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x65

    const/4 v7, 0x1

    if-ne p1, v6, :cond_93

    const-string v6, "GLBLSATABS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_83

    const-string v6, "GLWLSATABS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d5

    :cond_83
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d5

    :cond_93
    const/16 v6, 0x66

    if-ne p1, v6, :cond_b6

    const-string v6, "GLBLDM"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a7

    const-string v6, "GLWLDM"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b6

    :cond_a7
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b6
    const-string v6, "GLBL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c6

    const-string v6, "GLWL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d5

    :cond_c6
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d5
    :goto_d5
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_d8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_28 .. :try_end_d8} :catch_34
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_d8} :catch_31
    .catchall {:try_start_28 .. :try_end_d8} :catchall_2e

    add-int/lit8 v4, v4, 0x1

    goto :goto_63

    :goto_db
    nop

    :try_start_dc
    sget-boolean v4, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v4, :cond_e3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e3
    nop

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V
    :try_end_e7
    .catchall {:try_start_dc .. :try_end_e7} :catchall_2e

    if-eqz v1, :cond_ed

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    :cond_ed
    if-eqz v2, :cond_11e

    goto :goto_11a

    :goto_f0
    nop

    :try_start_f1
    sget-boolean v4, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v4, :cond_f8

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    :cond_f8
    nop

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V
    :try_end_fc
    .catchall {:try_start_f1 .. :try_end_fc} :catchall_2e

    if-eqz v1, :cond_102

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    :cond_102
    if-eqz v2, :cond_11e

    goto :goto_11a

    :goto_105
    if-eqz v1, :cond_10b

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    :cond_10b
    if-eqz v2, :cond_111

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v2, 0x0

    :cond_111
    throw v3

    :cond_112
    if-eqz v1, :cond_118

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    :cond_118
    if-eqz v2, :cond_11e

    :goto_11a
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v2, 0x0

    :cond_11e
    return-object v0
.end method

.method protected getLaunchPolicyDatabaseVersion()Landroid/util/ArrayMap;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v2, :cond_16

    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    move-object v2, v3

    goto :goto_16

    :catchall_f
    move-exception v3

    goto/16 :goto_81

    :catch_12
    move-exception v3

    goto :goto_57

    :catch_14
    move-exception v3

    goto :goto_6c

    :cond_16
    :goto_16
    if-eqz v2, :cond_8e

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "LaunchPackageVersion"

    const-string/jumbo v3, "reason"

    const-string/jumbo v4, "version"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, v2

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v1, v3

    if-eqz v1, :cond_8e

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_8e

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v3, 0x0

    move v4, v3

    :goto_3f
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_8e

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_54
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_54} :catch_14
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_54} :catch_12
    .catchall {:try_start_9 .. :try_end_54} :catchall_f

    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    :goto_57
    nop

    :try_start_58
    sget-boolean v4, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v4, :cond_5f

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5f
    nop

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V
    :try_end_63
    .catchall {:try_start_58 .. :try_end_63} :catchall_f

    if-eqz v1, :cond_69

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    :cond_69
    if-eqz v2, :cond_9a

    goto :goto_96

    :goto_6c
    nop

    :try_start_6d
    sget-boolean v4, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v4, :cond_74

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    :cond_74
    nop

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V
    :try_end_78
    .catchall {:try_start_6d .. :try_end_78} :catchall_f

    if-eqz v1, :cond_7e

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    :cond_7e
    if-eqz v2, :cond_9a

    goto :goto_96

    :goto_81
    if-eqz v1, :cond_87

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    :cond_87
    if-eqz v2, :cond_8d

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v2, 0x0

    :cond_8d
    throw v3

    :cond_8e
    if-eqz v1, :cond_94

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    :cond_94
    if-eqz v2, :cond_9a

    :goto_96
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v2, 0x0

    :cond_9a
    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    return-void
.end method
