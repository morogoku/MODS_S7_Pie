.class Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper$1;
.super Ljava/lang/Object;
.source "VpnStorageHelper.java"

# interfaces
.implements Lcom/android/server/enterprise/storage/TableCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->doTablesCreationOrUpdate(Landroid/database/sqlite/SQLiteDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;

.field final synthetic val$db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper$1;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;

    iput-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTableFound(Lcom/android/server/enterprise/storage/Table;)V
    .registers 11

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    invoke-static {v1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->access$000(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->preTableCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V
    invoke-static {v1, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->access$100(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V
    invoke-static {v1, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->access$200(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->postTableCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V
    invoke-static {v1, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->access$300(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V

    goto :goto_73

    :cond_1c
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->preTableUpdate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)Z
    invoke-static {v1, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->access$400(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)Z

    move-result v1

    if-nez v1, :cond_73

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->getMissingColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/server/enterprise/storage/Table;)Ljava/util/ArrayList;
    invoke-static {v1, v0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->access$500(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/server/enterprise/storage/Table;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v3, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/storage/Column;

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "ALTER TABLE %s ADD COLUMN %s;"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v5

    invoke-virtual {v3}, Lcom/android/server/enterprise/storage/Column;->getSQLDeclaration()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v4

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_2e

    :cond_53
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->access$600()Z

    move-result v2

    if-eqz v2, :cond_73

    const-string v2, "KnoxVpn.StorageHelper"

    const-string/jumbo v3, "onTableFound Altered Table %s with Columns %d"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v4

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_73} :catch_74

    :cond_73
    :goto_73
    goto :goto_90

    :catch_74
    move-exception v1

    const-string v2, "KnoxVpn.StorageHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Table "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " creation/update EX:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_90
    return-void
.end method
