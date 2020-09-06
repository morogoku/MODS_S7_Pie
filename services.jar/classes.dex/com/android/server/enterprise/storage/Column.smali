.class public Lcom/android/server/enterprise/storage/Column;
.super Ljava/lang/Object;
.source "Column.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/storage/Column$DATA_TYPE;
    }
.end annotation


# instance fields
.field public mColumnName:Ljava/lang/String;

.field public mColumnType:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

.field public mDefaultValue:Ljava/lang/String;

.field public mIsPrimaryKey:Z

.field public mProperties:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/android/server/enterprise/storage/Column$DATA_TYPE;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/storage/Column;->mColumnName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/enterprise/storage/Column;->mColumnType:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    iput-boolean p3, p0, Lcom/android/server/enterprise/storage/Column;->mIsPrimaryKey:Z

    iput-object p4, p0, Lcom/android/server/enterprise/storage/Column;->mProperties:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/enterprise/storage/Column;->mDefaultValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSQLDeclaration()Ljava/lang/String;
    .registers 8

    const-string v0, "%s %s"

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/enterprise/storage/Column;->mColumnName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/server/enterprise/storage/Column;->mColumnType:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    invoke-virtual {v3}, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/enterprise/storage/Column;->mProperties:Ljava/lang/String;

    if-eqz v2, :cond_29

    const-string v2, "%s %s"

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v0, v3, v4

    iget-object v6, p0, Lcom/android/server/enterprise/storage/Column;->mProperties:Ljava/lang/String;

    aput-object v6, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_29
    iget-object v2, p0, Lcom/android/server/enterprise/storage/Column;->mDefaultValue:Ljava/lang/String;

    if-eqz v2, :cond_3b

    const-string v2, "%s DEFAULT %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v4

    iget-object v3, p0, Lcom/android/server/enterprise/storage/Column;->mDefaultValue:Ljava/lang/String;

    aput-object v3, v1, v5

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_3b
    return-object v0
.end method
