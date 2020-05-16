.class public Lcom/android/server/bridge/operations/RCPDumpState;
.super Ljava/lang/Object;
.source "RCPDumpState.java"


# static fields
.field private static final CONTACT_ACCOUNT_TYPE_KNOX:Ljava/lang/String; = "vnd.sec.contact.phone_knox"

.field private static final CONTACT_ACCOUNT_TYPE_KNOX2:Ljava/lang/String; = "vnd.sec.contact.phone_knox2"

.field private static final CONTACT_ACCOUNT_TYPE_KNOX3:Ljava/lang/String; = "vnd.sec.contact.phone_knox3"

.field private static final CONTACT_ACCOUNT_TYPE_PERSONAL:Ljava/lang/String; = "vnd.sec.contact.phone_personal"

.field private static final CONTACT_ACCOUNT_TYPE_SECUREFOLDER:Ljava/lang/String; = "vnd.sec.contact.phone_knox_securefolder"

.field private static final EVENT_ACCOUNT_NAME:Ljava/lang/String; = "calendar_personal"

.field private static final PROVIDER_CALENDNAR:Ljava/lang/String; = "Calendar"

.field private static final PROVIDER_CONTACT:Ljava/lang/String; = "Contact"

.field private static final TABLE_EVENT:Ljava/lang/String; = "Event"

.field private static final TABLE_GROUPS:Ljava/lang/String; = "Group"

.field private static final TABLE_RAW_CONTACT:Ljava/lang/String; = "Raw_Contact"

.field private static final TABLE_TASK:Ljava/lang/String; = "Task"

.field private static final TASK_ACCOUNT_NAME:Ljava/lang/String; = "task_personal_"

.field private static mRCPDumpState:Lcom/android/server/bridge/operations/RCPDumpState;


# instance fields
.field private final TAG:Ljava/lang/String;

.field mContainerUri:Landroid/net/Uri;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field mOwnerUri:Landroid/net/Uri;

.field mQueryUri:Landroid/net/Uri;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPDumpState:Lcom/android/server/bridge/operations/RCPDumpState;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/android/server/bridge/operations/RCPDumpState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mUserManager:Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    iput-object p1, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method private dumpStateEvents(Ljava/io/PrintWriter;II)V
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dumpStateEvents , mSourceId : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", DestinationId : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v6, "original_id ASC, _id ASC"

    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    if-eqz v3, :cond_41

    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v0, v3}, Lcom/android/server/bridge/operations/RCPDumpState;->insertUserInfoToUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    goto :goto_49

    :cond_41
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v0, v4}, Lcom/android/server/bridge/operations/RCPDumpState;->insertUserInfoToUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    :goto_49
    :try_start_49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACCOUNT_NAME NOT LIKE ? AND DELETED=? "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Lcom/android/server/bridge/operations/RCPDumpState;->get_exCalendarId(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_5e} :catch_bc
    .catchall {:try_start_49 .. :try_end_5e} :catchall_b8

    :try_start_5e
    const-string v0, "calendar_personal%"

    const-string v5, "0"

    filled-new-array {v0, v5}, [Ljava/lang/String;

    move-result-object v13

    if-nez v3, :cond_6d

    iget-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    goto :goto_71

    :cond_6d
    iget-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    :goto_71
    iget-object v9, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v10, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    move-object v14, v6

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v7, v0

    if-eqz v7, :cond_ac

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_ac

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dumpStateEvents ,No of Original Events from Source "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  is : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Source Events ID\'s : "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {v1, v2, v7}, Lcom/android/server/bridge/operations/RCPDumpState;->printIDs(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_ac} :catch_b5
    .catchall {:try_start_5e .. :try_end_ac} :catchall_b2

    :cond_ac
    if-eqz v7, :cond_c6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_c6

    :catchall_b2
    move-exception v0

    goto/16 :goto_1a1

    :catch_b5
    move-exception v0

    move-object v5, v12

    goto :goto_bd

    :catchall_b8
    move-exception v0

    move-object v12, v5

    goto/16 :goto_1a1

    :catch_bc
    move-exception v0

    :goto_bd
    :try_start_bd
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c0
    .catchall {:try_start_bd .. :try_end_c0} :catchall_b8

    if-eqz v7, :cond_c5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_c5
    move-object v12, v5

    :cond_c6
    :goto_c6
    :try_start_c6
    const-string v15, "ACCOUNT_NAME = ? AND DELETED=? "
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_c8} :catch_13d
    .catchall {:try_start_c6 .. :try_end_c8} :catchall_13a

    const/4 v0, 0x2

    :try_start_c9
    new-array v0, v0, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "calendar_personal"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v5

    const/4 v5, 0x1

    const-string v8, "0"

    aput-object v8, v0, v5

    move-object/from16 v16, v0

    if-nez v4, :cond_ed

    iget-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    goto :goto_f1

    :cond_ed
    iget-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    :goto_f1
    iget-object v12, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v13, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    move-object v14, v11

    move-object/from16 v17, v6

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v7, v0

    if-eqz v7, :cond_12e

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_12e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dumpStateEvents ,No of Synced Events to Destination"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  is : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Destination Events ID\'s : "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {v1, v2, v7}, Lcom/android/server/bridge/operations/RCPDumpState;->printIDs(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_12e} :catch_137
    .catchall {:try_start_c9 .. :try_end_12e} :catchall_135

    :cond_12e
    if-eqz v7, :cond_133

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_133
    move-object v12, v15

    goto :goto_146

    :catchall_135
    move-exception v0

    goto :goto_19b

    :catch_137
    move-exception v0

    move-object v12, v15

    goto :goto_13e

    :catchall_13a
    move-exception v0

    move-object v15, v12

    goto :goto_19b

    :catch_13d
    move-exception v0

    :goto_13e
    :try_start_13e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_141
    .catchall {:try_start_13e .. :try_end_141} :catchall_13a

    if-eqz v7, :cond_146

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_146
    :goto_146
    :try_start_146
    iget-object v13, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "Calendar"

    const-string v5, "Event"

    invoke-direct {v1, v3, v4, v0, v5}, Lcom/android/server/bridge/operations/RCPDumpState;->getRCPDumpStateProviderUri(IILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v7, v0

    if-eqz v7, :cond_185

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_185

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dumpStateEvents ,No of Events records in RCP local db  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "RCP local db (SourceId:DestinationId) :  "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {v1, v2, v7}, Lcom/android/server/bridge/operations/RCPDumpState;->printRCPLoaclDB(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_185
    .catch Ljava/lang/Exception; {:try_start_146 .. :try_end_185} :catch_18d
    .catchall {:try_start_146 .. :try_end_185} :catchall_18b

    :cond_185
    if-eqz v7, :cond_194

    :goto_187
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_194

    :catchall_18b
    move-exception v0

    goto :goto_195

    :catch_18d
    move-exception v0

    :try_start_18e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_191
    .catchall {:try_start_18e .. :try_end_191} :catchall_18b

    if-eqz v7, :cond_194

    goto :goto_187

    :cond_194
    :goto_194
    return-void

    :goto_195
    if-eqz v7, :cond_19a

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_19a
    throw v0

    :goto_19b
    if-eqz v7, :cond_1a0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1a0
    throw v0

    :goto_1a1
    if-eqz v7, :cond_1a6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1a6
    throw v0
.end method

.method private dumpStateGroups(Ljava/io/PrintWriter;II)V
    .registers 28

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dumpStateGroups , mSourceId : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", DestinationId : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "_id"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v12

    const-string v7, "_id ASC"

    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    if-eqz v3, :cond_41

    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v0, v3}, Lcom/android/server/bridge/operations/RCPDumpState;->insertUserInfoToUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    goto :goto_49

    :cond_41
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v0, v4}, Lcom/android/server/bridge/operations/RCPDumpState;->insertUserInfoToUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    :goto_49
    :try_start_49
    new-instance v0, Landroid/telephony/TelephonyManager;

    iget-object v9, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContext:Landroid/content/Context;

    invoke-direct {v0, v9}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v9

    if-eqz v9, :cond_6f

    const-string v9, "account_type<>? AND account_type NOT LIKE ? AND _id NOT IN (?,?,?,?)  AND deleted=?"

    move-object v5, v9

    const-string/jumbo v13, "vnd.sec.contact.phone_personal"

    const-string/jumbo v14, "vnd.sec.contact.phone_knox%"

    const-string v15, "1"

    const-string v16, "2"

    const-string v17, "3"

    const-string v18, "4"

    const-string v19, "0"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    goto :goto_85

    :cond_6f
    const-string v9, "account_type<>? AND account_type NOT LIKE ? AND _id NOT IN (?,?,?)  AND deleted=?"

    move-object v5, v9

    const-string/jumbo v13, "vnd.sec.contact.phone_personal"

    const-string/jumbo v14, "vnd.sec.contact.phone_knox%"

    const-string v15, "1"

    const-string v16, "2"

    const-string v17, "3"

    const-string v18, "0"

    filled-new-array/range {v13 .. v18}, [Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    :goto_85
    if-nez v3, :cond_8c

    iget-object v9, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    iput-object v9, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    goto :goto_90

    :cond_8c
    iget-object v9, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    iput-object v9, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    :goto_90
    iget-object v10, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v11, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    move-object v8, v9

    if-eqz v8, :cond_cd

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_cd

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "dumpStateGroups ,No of Original Groups from Source "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "  is : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v9, "Source Group ID\'s : "

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {v1, v2, v8}, Lcom/android/server/bridge/operations/RCPDumpState;->printIDs(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_cd} :catch_d6
    .catchall {:try_start_49 .. :try_end_cd} :catchall_d3

    :cond_cd
    if-eqz v8, :cond_dd

    :goto_cf
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_dd

    :catchall_d3
    move-exception v0

    goto/16 :goto_1be

    :catch_d6
    move-exception v0

    :try_start_d7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_da
    .catchall {:try_start_d7 .. :try_end_da} :catchall_d3

    if-eqz v8, :cond_dd

    goto :goto_cf

    :cond_dd
    :goto_dd
    :try_start_dd
    const-string v16, "account_type= ?  AND deleted=?"
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_df} :catch_153
    .catchall {:try_start_dd .. :try_end_df} :catchall_14d

    const/4 v0, 0x2

    :try_start_e0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v1, v3}, Lcom/android/server/bridge/operations/RCPDumpState;->getContactAccountType(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v5

    const/4 v5, 0x1

    const-string v9, "0"

    aput-object v9, v0, v5
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_ee} :catch_149
    .catchall {:try_start_e0 .. :try_end_ee} :catchall_147

    move-object/from16 v17, v0

    if-nez v4, :cond_100

    :try_start_f2
    iget-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    goto :goto_104

    :catchall_f7
    move-exception v0

    goto/16 :goto_1b8

    :catch_fa
    move-exception v0

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    goto :goto_154

    :cond_100
    iget-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    :goto_104
    iget-object v13, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v14, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    move-object v15, v12

    move-object/from16 v18, v7

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v8, v0

    if-eqz v8, :cond_141

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_141

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dumpStateGroups ,No of Synced Groups to Destination "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  is : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Destination Group ID\'s : "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {v1, v2, v8}, Lcom/android/server/bridge/operations/RCPDumpState;->printIDs(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_141
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_141} :catch_fa
    .catchall {:try_start_f2 .. :try_end_141} :catchall_f7

    :cond_141
    if-eqz v8, :cond_160

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_160

    :catchall_147
    move-exception v0

    goto :goto_150

    :catch_149
    move-exception v0

    move-object/from16 v5, v16

    goto :goto_154

    :catchall_14d
    move-exception v0

    move-object/from16 v16, v5

    :goto_150
    move-object/from16 v17, v6

    goto :goto_1b8

    :catch_153
    move-exception v0

    :goto_154
    :try_start_154
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_157
    .catchall {:try_start_154 .. :try_end_157} :catchall_14d

    if-eqz v8, :cond_15c

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_15c
    move-object/from16 v16, v5

    move-object/from16 v17, v6

    :cond_160
    :goto_160
    :try_start_160
    iget-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "Contact"

    const-string v6, "Group"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/server/bridge/operations/RCPDumpState;->getRCPDumpStateProviderUri(IILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v23}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v8, v0

    if-eqz v8, :cond_1a2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1a2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dumpStateGroups ,No of Group records in RCP local db  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "RCP local db (SourceId:DestinationId) :  "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {v1, v2, v8}, Lcom/android/server/bridge/operations/RCPDumpState;->printRCPLoaclDB(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_1a2
    .catch Ljava/lang/Exception; {:try_start_160 .. :try_end_1a2} :catch_1aa
    .catchall {:try_start_160 .. :try_end_1a2} :catchall_1a8

    :cond_1a2
    if-eqz v8, :cond_1b1

    :goto_1a4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1b1

    :catchall_1a8
    move-exception v0

    goto :goto_1b2

    :catch_1aa
    move-exception v0

    :try_start_1ab
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1ae
    .catchall {:try_start_1ab .. :try_end_1ae} :catchall_1a8

    if-eqz v8, :cond_1b1

    goto :goto_1a4

    :cond_1b1
    :goto_1b1
    return-void

    :goto_1b2
    if-eqz v8, :cond_1b7

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1b7
    throw v0

    :goto_1b8
    if-eqz v8, :cond_1bd

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1bd
    throw v0

    :goto_1be
    if-eqz v8, :cond_1c3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1c3
    throw v0
.end method

.method private dumpStateRawContacts(Ljava/io/PrintWriter;II)V
    .registers 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dumpStateRawContacts , mSourceId : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", DestinationId : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "_id"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v12

    const-string v7, "_id ASC"

    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    if-eqz v3, :cond_41

    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v0, v3}, Lcom/android/server/bridge/operations/RCPDumpState;->insertUserInfoToUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    goto :goto_49

    :cond_41
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v0, v4}, Lcom/android/server/bridge/operations/RCPDumpState;->insertUserInfoToUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    :goto_49
    :try_start_49
    const-string v13, "account_type<>? AND account_type NOT LIKE ? AND deleted=?"
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4b} :catch_b4
    .catchall {:try_start_49 .. :try_end_4b} :catchall_af

    :try_start_4b
    const-string/jumbo v0, "vnd.sec.contact.phone_personal"

    const-string/jumbo v5, "vnd.sec.contact.phone_knox%"

    const-string v9, "0"

    filled-new-array {v0, v5, v9}, [Ljava/lang/String;

    move-result-object v14
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_57} :catch_ac
    .catchall {:try_start_4b .. :try_end_57} :catchall_aa

    if-nez v3, :cond_65

    :try_start_59
    iget-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    goto :goto_69

    :catchall_5e
    move-exception v0

    goto/16 :goto_19e

    :catch_61
    move-exception v0

    move-object v5, v13

    move-object v6, v14

    goto :goto_b5

    :cond_65
    iget-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    :goto_69
    iget-object v10, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v11, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    move-object v15, v7

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v8, v0

    if-eqz v8, :cond_a4

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_a4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dumpStateRawContacts ,No of Original Raw_Contacts from Source "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  is : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Source Raw_Contacts ID\'s : "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {v1, v2, v8}, Lcom/android/server/bridge/operations/RCPDumpState;->printIDs(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_a4} :catch_61
    .catchall {:try_start_59 .. :try_end_a4} :catchall_5e

    :cond_a4
    if-eqz v8, :cond_bf

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_bf

    :catchall_aa
    move-exception v0

    goto :goto_b1

    :catch_ac
    move-exception v0

    move-object v5, v13

    goto :goto_b5

    :catchall_af
    move-exception v0

    move-object v13, v5

    :goto_b1
    move-object v14, v6

    goto/16 :goto_19e

    :catch_b4
    move-exception v0

    :goto_b5
    :try_start_b5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b8
    .catchall {:try_start_b5 .. :try_end_b8} :catchall_af

    if-eqz v8, :cond_bd

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_bd
    move-object v13, v5

    move-object v14, v6

    :cond_bf
    :goto_bf
    :try_start_bf
    const-string v16, "account_type= ? AND deleted=?"
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_c1} :catch_139
    .catchall {:try_start_bf .. :try_end_c1} :catchall_133

    const/4 v0, 0x2

    :try_start_c2
    new-array v0, v0, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v1, v3}, Lcom/android/server/bridge/operations/RCPDumpState;->getContactAccountType(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    const/4 v5, 0x1

    const-string v6, "0"

    aput-object v6, v0, v5
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_d0} :catch_12f
    .catchall {:try_start_c2 .. :try_end_d0} :catchall_12d

    move-object/from16 v17, v0

    if-nez v4, :cond_e2

    :try_start_d4
    iget-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    goto :goto_e6

    :catchall_d9
    move-exception v0

    goto/16 :goto_198

    :catch_dc
    move-exception v0

    move-object/from16 v13, v16

    move-object/from16 v14, v17

    goto :goto_13a

    :cond_e2
    iget-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    :goto_e6
    iget-object v13, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v14, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    move-object v15, v12

    move-object/from16 v18, v7

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v8, v0

    if-eqz v8, :cond_123

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_123

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dumpStateRawContacts ,No of Synced Raw_Contacts to Destination "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  is : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Destination Raw_Contacts ID\'s : "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {v1, v2, v8}, Lcom/android/server/bridge/operations/RCPDumpState;->printIDs(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_123} :catch_dc
    .catchall {:try_start_d4 .. :try_end_123} :catchall_d9

    :cond_123
    if-eqz v8, :cond_128

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_128
    move-object/from16 v13, v16

    move-object/from16 v14, v17

    goto :goto_142

    :catchall_12d
    move-exception v0

    goto :goto_136

    :catch_12f
    move-exception v0

    move-object/from16 v13, v16

    goto :goto_13a

    :catchall_133
    move-exception v0

    move-object/from16 v16, v13

    :goto_136
    move-object/from16 v17, v14

    goto :goto_198

    :catch_139
    move-exception v0

    :goto_13a
    :try_start_13a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_13d
    .catchall {:try_start_13a .. :try_end_13d} :catchall_133

    if-eqz v8, :cond_142

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_142
    :goto_142
    :try_start_142
    iget-object v15, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "Contact"

    const-string v5, "Raw_Contact"

    invoke-direct {v1, v3, v4, v0, v5}, Lcom/android/server/bridge/operations/RCPDumpState;->getRCPDumpStateProviderUri(IILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v15 .. v20}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v8, v0

    if-eqz v8, :cond_182

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_182

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dumpStateRawContacts ,No of Raw_Contacts records in RCP local db  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "RCP local db (SourceId:DestinationId) :  "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {v1, v2, v8}, Lcom/android/server/bridge/operations/RCPDumpState;->printRCPLoaclDB(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_182
    .catch Ljava/lang/Exception; {:try_start_142 .. :try_end_182} :catch_18a
    .catchall {:try_start_142 .. :try_end_182} :catchall_188

    :cond_182
    if-eqz v8, :cond_191

    :goto_184
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_191

    :catchall_188
    move-exception v0

    goto :goto_192

    :catch_18a
    move-exception v0

    :try_start_18b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_18e
    .catchall {:try_start_18b .. :try_end_18e} :catchall_188

    if-eqz v8, :cond_191

    goto :goto_184

    :cond_191
    :goto_191
    return-void

    :goto_192
    if-eqz v8, :cond_197

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_197
    throw v0

    :goto_198
    if-eqz v8, :cond_19d

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_19d
    throw v0

    :goto_19e
    if-eqz v8, :cond_1a3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1a3
    throw v0
.end method

.method private dumpStateTasks(Ljava/io/PrintWriter;II)V
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dumpStateTasks , mSourceId : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", DestinationId : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v11

    const-string v6, "_id ASC"

    const-string v0, "content://com.android.calendar/syncTasks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    if-eqz v3, :cond_44

    iget-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    invoke-direct {v1, v0, v3}, Lcom/android/server/bridge/operations/RCPDumpState;->insertUserInfoToUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    goto :goto_4c

    :cond_44
    iget-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    invoke-direct {v1, v0, v4}, Lcom/android/server/bridge/operations/RCPDumpState;->insertUserInfoToUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    :goto_4c
    :try_start_4c
    const-string v12, "_sync_account NOT LIKE ? AND DELETED=?"
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4e} :catch_ad
    .catchall {:try_start_4c .. :try_end_4e} :catchall_a9

    :try_start_4e
    const-string/jumbo v0, "task_personal_%"

    const-string v5, "0"

    filled-new-array {v0, v5}, [Ljava/lang/String;

    move-result-object v13

    if-nez v3, :cond_5e

    iget-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    goto :goto_62

    :cond_5e
    iget-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    :goto_62
    iget-object v9, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v10, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    move-object v14, v6

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v7, v0

    if-eqz v7, :cond_9d

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dumpStateTasks ,No of Original Tasks from Source "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  is : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Source Tasks ID\'s : "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {v1, v2, v7}, Lcom/android/server/bridge/operations/RCPDumpState;->printIDs(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_9d} :catch_a6
    .catchall {:try_start_4e .. :try_end_9d} :catchall_a3

    :cond_9d
    if-eqz v7, :cond_b7

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_b7

    :catchall_a3
    move-exception v0

    goto/16 :goto_193

    :catch_a6
    move-exception v0

    move-object v5, v12

    goto :goto_ae

    :catchall_a9
    move-exception v0

    move-object v12, v5

    goto/16 :goto_193

    :catch_ad
    move-exception v0

    :goto_ae
    :try_start_ae
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b1
    .catchall {:try_start_ae .. :try_end_b1} :catchall_a9

    if-eqz v7, :cond_b6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_b6
    move-object v12, v5

    :cond_b7
    :goto_b7
    :try_start_b7
    const-string v15, "_sync_account = ? AND DELETED=?"
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_b9} :catch_12f
    .catchall {:try_start_b7 .. :try_end_b9} :catchall_12c

    const/4 v0, 0x2

    :try_start_ba
    new-array v0, v0, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "task_personal_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v5

    const/4 v5, 0x1

    const-string v8, "0"

    aput-object v8, v0, v5

    move-object/from16 v16, v0

    if-nez v4, :cond_df

    iget-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    goto :goto_e3

    :cond_df
    iget-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    :goto_e3
    iget-object v12, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v13, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    move-object v14, v11

    move-object/from16 v17, v6

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v7, v0

    if-eqz v7, :cond_120

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_120

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dumpStateTasks ,No of Synced Tasks to Destination "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  is : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Destination Tasks ID\'s : "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {v1, v2, v7}, Lcom/android/server/bridge/operations/RCPDumpState;->printIDs(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_120
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_120} :catch_129
    .catchall {:try_start_ba .. :try_end_120} :catchall_127

    :cond_120
    if-eqz v7, :cond_125

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_125
    move-object v12, v15

    goto :goto_138

    :catchall_127
    move-exception v0

    goto :goto_18d

    :catch_129
    move-exception v0

    move-object v12, v15

    goto :goto_130

    :catchall_12c
    move-exception v0

    move-object v15, v12

    goto :goto_18d

    :catch_12f
    move-exception v0

    :goto_130
    :try_start_130
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_133
    .catchall {:try_start_130 .. :try_end_133} :catchall_12c

    if-eqz v7, :cond_138

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_138
    :goto_138
    :try_start_138
    iget-object v13, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "Calendar"

    const-string v5, "Task"

    invoke-direct {v1, v3, v4, v0, v5}, Lcom/android/server/bridge/operations/RCPDumpState;->getRCPDumpStateProviderUri(IILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v7, v0

    if-eqz v7, :cond_177

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_177

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dumpStateTasks ,No of tasks records in RCP local db  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "RCP local db (SourceId:DestinationId) :  "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {v1, v2, v7}, Lcom/android/server/bridge/operations/RCPDumpState;->printRCPLoaclDB(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_177
    .catch Ljava/lang/Exception; {:try_start_138 .. :try_end_177} :catch_17f
    .catchall {:try_start_138 .. :try_end_177} :catchall_17d

    :cond_177
    if-eqz v7, :cond_186

    :goto_179
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_186

    :catchall_17d
    move-exception v0

    goto :goto_187

    :catch_17f
    move-exception v0

    :try_start_180
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_183
    .catchall {:try_start_180 .. :try_end_183} :catchall_17d

    if-eqz v7, :cond_186

    goto :goto_179

    :cond_186
    :goto_186
    return-void

    :goto_187
    if-eqz v7, :cond_18c

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_18c
    throw v0

    :goto_18d
    if-eqz v7, :cond_192

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_192
    throw v0

    :goto_193
    if-eqz v7, :cond_198

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_198
    throw v0
.end method

.method private getContactAccountType(I)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_7

    const-string/jumbo v0, "vnd.sec.contact.phone_personal"

    goto :goto_34

    :cond_7
    iget-object v1, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isFirstContainer()Z

    move-result v2

    if-eqz v2, :cond_17

    const-string/jumbo v0, "vnd.sec.contact.phone_knox"

    goto :goto_34

    :cond_17
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isSecondContainer()Z

    move-result v2

    if-eqz v2, :cond_21

    const-string/jumbo v0, "vnd.sec.contact.phone_knox2"

    goto :goto_34

    :cond_21
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isThirdContainer()Z

    move-result v2

    if-eqz v2, :cond_2b

    const-string/jumbo v0, "vnd.sec.contact.phone_knox3"

    goto :goto_34

    :cond_2b
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v2

    if-eqz v2, :cond_34

    const-string/jumbo v0, "vnd.sec.contact.phone_knox_securefolder"

    :cond_34
    :goto_34
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/io/PrintWriter;)Lcom/android/server/bridge/operations/RCPDumpState;
    .registers 3

    sget-object v0, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPDumpState:Lcom/android/server/bridge/operations/RCPDumpState;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/server/bridge/operations/RCPDumpState;

    invoke-direct {v0, p0}, Lcom/android/server/bridge/operations/RCPDumpState;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPDumpState:Lcom/android/server/bridge/operations/RCPDumpState;

    :cond_b
    sget-object v0, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPDumpState:Lcom/android/server/bridge/operations/RCPDumpState;

    return-object v0
.end method

.method private getRCPDumpStateProviderUri(IILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_7

    move v3, p2

    goto :goto_8

    :cond_7
    move v3, p1

    :goto_8
    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v4

    if-eqz v4, :cond_11

    const-string v1, "com.samsung.knox.securefolder.rcpcomponents.sync.rcpdumpstateprovider"

    goto :goto_13

    :cond_11
    const-string v1, "com.samsung.android.knox.containeragent.rcpcomponents.sync.rcpdumpstateprovider"

    :goto_13
    const-string v4, "Contact"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    const-string v4, "Group"

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    if-nez p2, :cond_29

    const-string/jumbo v2, "ownergroup"

    goto :goto_66

    :cond_29
    const-string v2, "containergroup"

    goto :goto_66

    :cond_2c
    const-string v4, "Raw_Contact"

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_66

    if-nez p2, :cond_3a

    const-string/jumbo v2, "ownerrawcontact"

    goto :goto_66

    :cond_3a
    const-string v2, "containerrawcontact"

    goto :goto_66

    :cond_3d
    const-string v4, "Calendar"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_66

    const-string v4, "Event"

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_56

    if-nez p2, :cond_53

    const-string/jumbo v2, "ownerevent"

    goto :goto_66

    :cond_53
    const-string v2, "containerevent"

    goto :goto_66

    :cond_56
    const-string v4, "Task"

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_66

    if-nez p2, :cond_64

    const-string/jumbo v2, "ownertask"

    goto :goto_66

    :cond_64
    const-string v2, "containertask"

    :cond_66
    :goto_66
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private get_exCalendarId(I)Ljava/lang/String;
    .registers 11

    const-string v0, ""

    const/4 v1, 0x0

    if-nez p1, :cond_a

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    goto :goto_12

    :cond_a
    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v2, p1}, Lcom/android/server/bridge/operations/RCPDumpState;->insertUserInfoToUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    :goto_12
    :try_start_12
    const-string/jumbo v6, "name IS NULL OR name NOT IN(select name from Calendars where account_type is \'LOCAL\' AND account_name is \'local.samsungholiday\')"

    iget-object v2, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    const-string v2, "_id"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    if-eqz v1, :cond_8f

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8f

    const-string v2, "AND calendar_id IN ("

    move-object v0, v2

    iget-object v2, p0, Lcom/android/server/bridge/operations/RCPDumpState;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " id count fetched "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f
    invoke-interface {v1}, Landroid/database/Cursor;->isLast()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_75

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_82

    :cond_75
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    :goto_82
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_4f

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    :cond_8f
    iget-object v2, p0, Lcom/android/server/bridge/operations/RCPDumpState;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " final calendar "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a5
    .catchall {:try_start_12 .. :try_end_a5} :catchall_ab

    if-eqz v1, :cond_aa

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_aa
    return-object v0

    :catchall_ab
    move-exception v2

    if-eqz v1, :cond_b1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b1
    throw v2
.end method

.method private insertUserInfoToUri(Landroid/net/Uri;I)Landroid/net/Uri;
    .registers 7

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    return-object p1

    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0xa

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private printIDs(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    .registers 4

    :goto_0
    if-eqz p2, :cond_1c

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1c

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, " , "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_1c
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private printRCPLoaclDB(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    .registers 5

    :goto_0
    if-eqz p2, :cond_40

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_40

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_3a

    goto :goto_40

    :cond_3a
    const-string v0, " , "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_40
    :goto_40
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private printSyncHistory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_95

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_92

    :cond_37
    const-string v2, "  %s"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const-string/jumbo v5, "operation"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {p1, v2, v4}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v2, "%25s"

    new-array v4, v3, [Ljava/lang/Object;

    const-string/jumbo v5, "start_time"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1, v2, v4}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v2, "%25s"

    new-array v4, v3, [Ljava/lang/Object;

    const-string/jumbo v5, "finish_time"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1, v2, v4}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v2, "  %s"

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "result"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_37

    :cond_92
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_95
    return-void
.end method


# virtual methods
.method public dumpBackupAndRestoreHistory(Ljava/io/PrintWriter;I)V
    .registers 11

    const-string v0, "com.samsung.knox.securefolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dumpBackupAndRestoreHistory , userId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/bnr_logs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_84

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_81

    :cond_50
    const-string/jumbo v3, "timeStamp: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "timestamp"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "text: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "text"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_50

    :cond_81
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_84
    return-void
.end method

.method public dumpStateCalendar(Ljava/io/PrintWriter;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/bridge/operations/RCPDumpState;->dumpStateEvents(Ljava/io/PrintWriter;II)V

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/bridge/operations/RCPDumpState;->dumpStateTasks(Ljava/io/PrintWriter;II)V

    return-void
.end method

.method public dumpStateContact(Ljava/io/PrintWriter;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/bridge/operations/RCPDumpState;->dumpStateGroups(Ljava/io/PrintWriter;II)V

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/bridge/operations/RCPDumpState;->dumpStateRawContacts(Ljava/io/PrintWriter;II)V

    return-void
.end method

.method public dumpStateContainerSyncHistory(Ljava/io/PrintWriter;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v0, "com.samsung.knox.securefolder.rcpcomponents.sync.rcpdumpstateprovider"

    goto :goto_c

    :cond_a
    const-string v0, "com.samsung.android.knox.containeragent.rcpcomponents.sync.rcpdumpstateprovider"

    :goto_c
    const-string v1, "Contact import history:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "/container_contact_sync_history/"

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/bridge/operations/RCPDumpState;->printSyncHistory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "Contact export history:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "/owner_contact_sync_history/"

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/bridge/operations/RCPDumpState;->printSyncHistory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "Calendar import history:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "/container_calendar_sync_history/"

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/bridge/operations/RCPDumpState;->printSyncHistory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "Calendar export history:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "/owner_calendar_sync_history/"

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/bridge/operations/RCPDumpState;->printSyncHistory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public dumpStateFileOpsTable(Ljava/io/PrintWriter;I)V
    .registers 11

    const/4 v0, 0x0

    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v0, "com.samsung.knox.securefolder.rcpcomponents.move.provider.knoxcontentmgrdbprovider"

    goto :goto_c

    :cond_a
    const-string v0, "com.samsung.android.knox.containeragent.rcpcomponents.move.provider.knoxcontentmgrdbprovider"

    :goto_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_d7

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_d4

    :cond_49
    const-string/jumbo v3, "timeStamp"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " ("

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "operation"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ")"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " ret:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "resultCode"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " srcUri:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "srcUri"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " destUri:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "destUri"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " src:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "source"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " dest:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "destination"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_49

    :cond_d4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_d7
    return-void
.end method
