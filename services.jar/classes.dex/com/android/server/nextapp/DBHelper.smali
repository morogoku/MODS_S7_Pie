.class Lcom/android/server/nextapp/DBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBHelper.java"


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "PkgPredictions.db"

.field private static final DB_VERSION:I = 0x1

.field public static final INFO_TABLE:Ljava/lang/String; = "tbl_Summary"

.field private static final LOG_TAG:Ljava/lang/String; = "PkgPredictorService-DBHelper"

.field public static final SAMPLE_TABLE:Ljava/lang/String; = "tbl_Sample"


# instance fields
.field private CREATE_INFO_TABLE:Ljava/lang/String;

.field private CREATE_SAMPLE_TABLE:Ljava/lang/String;

.field private final contextReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "PkgPredictions.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const-string v0, "create table if not exists tbl_Sample(id integer primary key autoincrement,hour_of_day integer,day_of_week integer,previous_one varchar(128),previous_two varchar(128),previous_three varchar(128),running_pkg varchar(128),activity_name varchar(128),screen_orientation integer,wifi_status integer,bt_status integer,prediction varchar(512),predict_time integer,apk_version varchar(128),launch_time integer,consume_time integer,success integer,is_preloaded integer,error varchar(512))"

    iput-object v0, p0, Lcom/android/server/nextapp/DBHelper;->CREATE_SAMPLE_TABLE:Ljava/lang/String;

    const-string v0, "create table if not exists tbl_Summary(id integer primary key autoincrement,build_time integer,total_num integer,right_num integer,train_time integer)"

    iput-object v0, p0, Lcom/android/server/nextapp/DBHelper;->CREATE_INFO_TABLE:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/nextapp/DBHelper;->contextReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/nextapp/DBHelper;->CREATE_SAMPLE_TABLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/nextapp/DBHelper;->CREATE_INFO_TABLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    return-void
.end method
