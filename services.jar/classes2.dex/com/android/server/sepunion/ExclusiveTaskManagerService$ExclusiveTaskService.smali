.class Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;
.super Ljava/lang/Object;
.source "ExclusiveTaskManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/ExclusiveTaskManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExclusiveTaskService"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;,
        Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$MainHandler;,
        Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;,
        Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;
    }
.end annotation


# instance fields
.field private final A11Y_MENU_SERVICE:Ljava/lang/String;

.field private final A11Y_PACKAGE_NAME:Ljava/lang/String;

.field private final A11Y_SELECT2SPEAK_SERVICE:Ljava/lang/String;

.field private final APP_LIST:[Ljava/lang/String;

.field private final DB_FOR_RESET_SETTINGS:Ljava/lang/String;

.field private final DB_RESET_DONE:I

.field private final DB_RESET_STARTING:I

.field private final INTENT_NAME_UPDATE_MY_A11Y_NOTI:Ljava/lang/String;

.field private final STR_TYPES:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final TAG:Ljava/lang/String;

.field private final TALKBACK_COMPONENT_NAME:Ljava/lang/String;

.field private final UNIVERSAL_SWITCH_COMPONENT_NAME:Ljava/lang/String;

.field private final VOICE_ASSISTANT_COMPONENT_NAME:Ljava/lang/String;

.field private final kFixedLength:I

.field list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mActionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAffectListChain:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAppName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mExclusiveTaskObserver:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;

.field private mLastAccessibilityServiceDBValue:Ljava/lang/String;

.field private mLastVTUServiceId:I

.field private final mLock:Ljava/lang/Object;

.field private final mMainHandler:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$MainHandler;

.field private mModuleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNowDBReset:Z

.field private mOnChangeIgnoreList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPostProcessList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/sepunion/ExclusiveTaskManagerService$PostProcess;",
            ">;"
        }
    .end annotation
.end field

.field private mPreProcessList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/sepunion/ExclusiveTaskManagerService$PreProcess;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUniqueId:I

.field final synthetic this$0:Lcom/android/server/sepunion/ExclusiveTaskManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/ExclusiveTaskManagerService;Landroid/content/Context;)V
    .registers 68

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->this$0:Lcom/android/server/sepunion/ExclusiveTaskManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "ExclusiveTaskService"

    iput-object v1, v0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "SECURE"

    const-string v3, "GLOBAL"

    const-string v4, "SYSTEM"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->STR_TYPES:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->list:Ljava/util/ArrayList;

    const-string v2, "VoiceAssist"

    const-string v3, "Switch"

    const-string v4, "MagWindow"

    const-string v5, "MagGesture"

    const-string v6, "MagNavi"

    const-string v7, "Assist Menu"

    const-string v8, "Interaction"

    const-string v9, "AutoClick"

    const-string v10, "BabyCry"

    const-string v11, "Doorbell"

    const-string v12, "ColorBlind"

    const-string v13, "Lens"

    const-string v14, "NegativeColor"

    const-string v15, "Grey"

    const-string v16, "MuteAll"

    const-string v17, "DirectAccess"

    const-string v18, "DarkScreen"

    const-string v19, "Edge(Feed)"

    const-string v20, "Edge(Screen)"

    const-string v21, "Edge(People)"

    const-string v22, "Edge(Task)"

    const-string v23, "Airview"

    const-string v24, "AirCmd"

    const-string v25, "Direct Input"

    const-string v26, "One Hand"

    const-string v27, "Palm Swipe"

    const-string v28, "AOD"

    const-string v29, "Multiwin"

    const-string v30, "Edge(Light)"

    const-string v31, "S-Capture"

    const-string v32, "S-Stay"

    const-string v33, "AirMotion(Wake)"

    const-string v34, "AirMotion(Engine)"

    const-string v35, "Night Clock"

    const-string v36, "Pinwindow"

    const-string v37, "Navi-Hide"

    const-string v38, "Cam Quick"

    const-string v39, "BlueLight"

    const-string v40, "EasyMute"

    const-string v41, "RemoveAni"

    const-string v42, "HighCont Font"

    const-string v43, "ShowButton"

    const-string v44, "Color(Dal.)"

    const-string v45, "Color(Inv.)"

    const-string v46, "LargePtr"

    const-string v47, "FlashNoti"

    const-string v48, "ScreenNoti"

    const-string v49, "HearingAid"

    const-string v50, "SoundBal"

    const-string v51, "MonoAudio"

    const-string v52, "TapHold"

    const-string v53, "Single Tap"

    const-string v54, "Noti remind"

    const-string v55, "TapDuration"

    const-string v56, "IgnoreRepeat"

    const-string v57, "Gesture Navi"

    const-string v58, "NightMode"

    const-string v59, "A11YMenu"

    const-string v60, "Select2Spk"

    const-string v61, "DirectCall"

    const-string v62, "Motion Mute"

    const-string v63, "Palm Mute"

    const-string v64, "Smart Alert"

    filled-new-array/range {v2 .. v64}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->APP_LIST:[Ljava/lang/String;

    const/16 v1, 0x13

    iput v1, v0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->kFixedLength:I

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->DB_RESET_STARTING:I

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->DB_RESET_DONE:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mLock:Ljava/lang/Object;

    const-string v1, "com.samsung.accessibility.UPDATE_MY_A11Y_NOTI"

    iput-object v1, v0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->INTENT_NAME_UPDATE_MY_A11Y_NOTI:Ljava/lang/String;

    const-string v1, "com.samsung.accessibility"

    iput-object v1, v0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->A11Y_PACKAGE_NAME:Ljava/lang/String;

    const-string v1, "com.samsung.android.app.talkback.TalkBackService"

    iput-object v1, v0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->VOICE_ASSISTANT_COMPONENT_NAME:Ljava/lang/String;

    const-string v1, "com.samsung.accessibility.universalswitch.UniversalSwitchService"

    iput-object v1, v0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->UNIVERSAL_SWITCH_COMPONENT_NAME:Ljava/lang/String;

    const-string v1, "com.google.android.marvin.talkback.TalkBackService"

    iput-object v1, v0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->TALKBACK_COMPONENT_NAME:Ljava/lang/String;

    const-string v1, "com.google.android.accessibility.accessibilitymenu.AccessibilityMenuService"

    iput-object v1, v0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->A11Y_MENU_SERVICE:Ljava/lang/String;

    const-string v1, "com.google.android.accessibility.selecttospeak.SelectToSpeakService"

    iput-object v1, v0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->A11Y_SELECT2SPEAK_SERVICE:Ljava/lang/String;

    const-string v1, "accreset_state"

    iput-object v1, v0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->DB_FOR_RESET_SETTINGS:Ljava/lang/String;

    const/16 v1, 0x3e

    iput v1, v0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mUniqueId:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mActionList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mTaskArray:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mModuleList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mAffectListChain:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mPostProcessList:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mPreProcessList:Ljava/util/HashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mOnChangeIgnoreList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mAppName:Ljava/util/ArrayList;

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->init(Landroid/content/Context;)V

    new-instance v2, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$MainHandler;

    iget-object v3, v0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$MainHandler;-><init>(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;Landroid/os/Looper;)V

    iput-object v2, v0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mMainHandler:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$MainHandler;

    iget-object v2, v0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->APP_LIST:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_130
    if-ge v4, v3, :cond_13c

    aget-object v5, v2, v4

    iget-object v6, v0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mAppName:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_130

    :cond_13c
    new-instance v2, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;

    iget-object v3, v0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mMainHandler:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$MainHandler;

    iget-object v4, v0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;-><init>(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    iput-object v2, v0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mExclusiveTaskObserver:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->CreateTaskArray()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->makeExclusiveRelations()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->makeExtraExclusiveRelations()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->registerPreProcess()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->registerPostProcess()V

    return-void
.end method

.method private CreateActionMap()V
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    :try_start_3
    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/system/etc/task_action.conf"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    :goto_11
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    if-eqz v3, :cond_5f

    new-instance v3, Ljava/util/StringTokenizer;

    const-string v5, ","

    invoke-direct {v3, v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    :goto_2c
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_5e

    new-instance v7, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;

    invoke-direct {v7, p0, v1}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;-><init>(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;Lcom/android/server/sepunion/ExclusiveTaskManagerService$1;)V

    iget-object v8, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->STR_TYPES:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    iput v8, v7, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;->mDBType:I

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;->mAttribute:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_55

    goto :goto_56

    :cond_55
    const/4 v9, 0x0

    :goto_56
    iput-boolean v9, v7, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;->mNeedToNotify:Z

    iget-object v8, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mActionList:Ljava/util/ArrayList;

    invoke-virtual {v8, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_5d
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_5d} :catch_81
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_5d} :catch_6e
    .catchall {:try_start_3 .. :try_end_5d} :catchall_6c

    goto :goto_2c

    :cond_5e
    goto :goto_11

    :cond_5f
    :try_start_5f
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V

    goto :goto_65

    :catch_63
    move-exception v1

    goto :goto_69

    :goto_65
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_68} :catch_63

    goto :goto_6b

    :goto_69
    nop

    goto :goto_94

    :cond_6b
    :goto_6b
    goto :goto_94

    :catchall_6c
    move-exception v1

    goto :goto_95

    :catch_6e
    move-exception v1

    :try_start_6f
    const-string v3, "ExclusiveTaskService"

    const-string v4, "Fail to parse Task map"

    invoke-static {v3, v4}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_76
    .catchall {:try_start_6f .. :try_end_76} :catchall_6c

    if-eqz v0, :cond_7b

    :try_start_78
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V

    :cond_7b
    if-eqz v2, :cond_6b

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_80} :catch_63

    goto :goto_6b

    :catch_81
    move-exception v1

    :try_start_82
    const-string v3, "ExclusiveTaskService"

    const-string v4, "file does not exists"

    invoke-static {v3, v4}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catchall {:try_start_82 .. :try_end_89} :catchall_6c

    if-eqz v0, :cond_8e

    :try_start_8b
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V

    :cond_8e
    if-eqz v2, :cond_6b

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_93} :catch_63

    goto :goto_6b

    :goto_94
    return-void

    :goto_95
    nop

    if-eqz v0, :cond_9e

    :try_start_98
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V

    goto :goto_9e

    :catch_9c
    move-exception v3

    goto :goto_a4

    :cond_9e
    :goto_9e
    if-eqz v2, :cond_a5

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_a3} :catch_9c

    goto :goto_a5

    :goto_a4
    nop

    :cond_a5
    :goto_a5
    throw v1
.end method

.method private CreateTaskArray()V
    .registers 11

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mActionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enabled_accessibility_services"

    const/4 v5, -0x2

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_32

    const-string v4, "com.samsung.accessibility.universalswitch.UniversalSwitchService"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_21

    const/4 v1, 0x1

    goto :goto_32

    :cond_21
    const-string v4, "com.google.android.marvin.talkback.TalkBackService"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_31

    const-string v4, "com.samsung.android.app.talkback.TalkBackService"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_32

    :cond_31
    const/4 v1, 0x0

    :cond_32
    :goto_32
    const/4 v4, 0x0

    move v5, v2

    move v2, v4

    :goto_35
    if-ge v2, v0, :cond_cd

    invoke-direct {p0, v2}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->isVTU(I)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_4c

    if-ne v1, v2, :cond_47

    invoke-direct {p0, v2, v7, v7}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->updateTaskArray_Internal(III)V

    iput v2, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mLastVTUServiceId:I

    goto/16 :goto_c9

    :cond_47
    invoke-direct {p0, v2, v4, v4}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->updateTaskArray_Internal(III)V

    goto/16 :goto_c9

    :cond_4c
    const/16 v6, 0x39

    if-ne v2, v6, :cond_63

    if-eqz v3, :cond_5f

    const-string v6, "com.google.android.accessibility.accessibilitymenu.AccessibilityMenuService"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5f

    invoke-direct {p0, v2, v7, v7}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->updateTaskArray_Internal(III)V

    goto/16 :goto_c9

    :cond_5f
    invoke-direct {p0, v2, v4, v4}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->updateTaskArray_Internal(III)V

    goto :goto_c9

    :cond_63
    const/16 v6, 0x3a

    if-ne v2, v6, :cond_79

    if-eqz v3, :cond_75

    const-string v6, "com.google.android.accessibility.selecttospeak.SelectToSpeakService"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_75

    invoke-direct {p0, v2, v7, v7}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->updateTaskArray_Internal(III)V

    goto :goto_c9

    :cond_75
    invoke-direct {p0, v2, v4, v4}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->updateTaskArray_Internal(III)V

    goto :goto_c9

    :cond_79
    iget-object v6, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mActionList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;

    iget v8, v6, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;->mDBType:I

    if-nez v8, :cond_92

    iget-object v8, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, v6, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;->mAttribute:Ljava/lang/String;

    invoke-static {v8, v9, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    goto :goto_b4

    :cond_92
    iget v8, v6, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;->mDBType:I

    if-ne v8, v7, :cond_a3

    iget-object v8, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, v6, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;->mAttribute:Ljava/lang/String;

    invoke-static {v8, v9, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    goto :goto_b4

    :cond_a3
    iget v8, v6, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;->mDBType:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_b4

    iget-object v8, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, v6, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;->mAttribute:Ljava/lang/String;

    invoke-static {v8, v9, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    :cond_b4
    :goto_b4
    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->this$0:Lcom/android/server/sepunion/ExclusiveTaskManagerService;

    # getter for: Lcom/android/server/sepunion/ExclusiveTaskManagerService;->mHasSoftNaviBar:Z
    invoke-static {v9}, Lcom/android/server/sepunion/ExclusiveTaskManagerService;->access$700(Lcom/android/server/sepunion/ExclusiveTaskManagerService;)Z

    move-result v9

    if-eqz v9, :cond_c2

    const/16 v9, 0x24

    if-ne v2, v9, :cond_c2

    const/4 v8, 0x2

    :cond_c2
    if-ne v5, v8, :cond_c6

    move v7, v4

    nop

    :cond_c6
    invoke-direct {p0, v2, v7, v5}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->updateTaskArray_Internal(III)V

    :goto_c9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_35

    :cond_cd
    return-void
.end method

.method private RemakeTaskArray()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mTaskArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->CreateTaskArray()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;
    .registers 2

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mExclusiveTaskObserver:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mActionList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;)Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;
    .registers 2

    iput-object p1, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mExclusiveTaskObserver:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->isVTU(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mLastAccessibilityServiceDBValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mLastAccessibilityServiceDBValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mNowDBReset:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->RemakeTaskArray()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mPreProcessList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;III)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->updateTaskStateLocked(III)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mOnChangeIgnoreList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mAppName:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mLastVTUServiceId:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mPostProcessList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$MainHandler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mMainHandler:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$MainHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addAffectedList(ILjava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v0, v1

    move v1, v4

    goto :goto_b

    :cond_21
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->setAffectedList(I[IZ)I

    return-void
.end method

.method private hasSoftwareNavigationBar()Z
    .registers 5

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "config_showNavigationBar"

    const-string v2, "bool"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    return v1
.end method

.method private init(Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mContext:Landroid/content/Context;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mLastVTUServiceId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mNowDBReset:Z

    invoke-direct {p0}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->CreateActionMap()V

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->this$0:Lcom/android/server/sepunion/ExclusiveTaskManagerService;

    invoke-direct {p0}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->hasSoftwareNavigationBar()Z

    move-result v1

    # setter for: Lcom/android/server/sepunion/ExclusiveTaskManagerService;->mHasSoftNaviBar:Z
    invoke-static {v0, v1}, Lcom/android/server/sepunion/ExclusiveTaskManagerService;->access$702(Lcom/android/server/sepunion/ExclusiveTaskManagerService;Z)Z

    return-void
.end method

.method private isA11YFunction(I)Z
    .registers 3

    if-ltz p1, :cond_6

    const/16 v0, 0x10

    if-le p1, v0, :cond_e

    :cond_6
    const/16 v0, 0x27

    if-lt p1, v0, :cond_10

    const/16 v0, 0x36

    if-gt p1, v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private isVTU(I)Z
    .registers 4

    const/4 v0, 0x1

    if-eqz p1, :cond_c

    if-eq p1, v0, :cond_c

    const/16 v1, 0x2710

    if-ne p1, v1, :cond_a

    goto :goto_c

    :cond_a
    const/4 v0, 0x0

    nop

    :cond_c
    :goto_c
    return v0
.end method

.method private makeExclusiveRelations()V
    .registers 18

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v6, 0xe

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v6, 0x20

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v6, 0x15

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v7, 0x17

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v8, 0x19

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v9, 0x18

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v10, 0x12

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v10, 0x13

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v10, 0x14

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v10, 0x23

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v10, 0x35

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v10, 0x36

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v10

    const-string v11, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ACCESSIBILITY_CONFLICT"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    const/16 v11, 0x1a

    if-nez v10, :cond_cc

    const/16 v10, 0x1e

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v10, 0x21

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_cc
    const/4 v10, 0x0

    invoke-direct {v0, v10, v1}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->addAffectedList(ILjava/util/ArrayList;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v14, 0x20

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v14, 0x12

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v14, 0x13

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v14, 0x14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v14, 0x11

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v14, 0x27

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {v0, v2, v1}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->addAffectedList(ILjava/util/ArrayList;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v14, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v15, 0x18894

    if-ge v14, v15, :cond_173

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_173
    invoke-direct {v0, v3, v1}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->addAffectedList(ILjava/util/ArrayList;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v14, 0x22

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v14, 0x3b

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v14, 0x3c

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v14, 0x3d

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v14, 0x3e

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {v0, v4, v1}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->addAffectedList(ILjava/util/ArrayList;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/16 v8, 0xb

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v14, 0xc

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v15, 0xa

    invoke-direct {v0, v15, v1}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->addAffectedList(ILjava/util/ArrayList;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v13, 0xd

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {v0, v8, v1}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->addAffectedList(ILjava/util/ArrayList;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v13, 0x1c

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {v0, v14, v1}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->addAffectedList(ILjava/util/ArrayList;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v13, 0xd

    invoke-direct {v0, v13, v1}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->addAffectedList(ILjava/util/ArrayList;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v13

    const-string v15, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ACCESSIBILITY_CONFLICT"

    invoke-virtual {v13, v15}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_294

    const/16 v13, 0x1d

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_294
    invoke-direct {v0, v5, v1}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->addAffectedList(ILjava/util/ArrayList;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ACCESSIBILITY_CONFLICT"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2e7

    const/16 v2, 0x1c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2e7
    invoke-direct {v0, v12, v1}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->addAffectedList(ILjava/util/ArrayList;)V

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->addAffectedList(ILjava/util/ArrayList;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0xe

    invoke-direct {v0, v2, v1}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->addAffectedList(ILjava/util/ArrayList;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x7

    invoke-direct {v0, v2, v1}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->addAffectedList(ILjava/util/ArrayList;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    sget v2, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v3, 0x18894

    if-ge v2, v3, :cond_324

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0xf

    invoke-direct {v0, v2, v1}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->addAffectedList(ILjava/util/ArrayList;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_324
    const/16 v2, 0x24

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x10

    invoke-direct {v0, v2, v1}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->addAffectedList(ILjava/util/ArrayList;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x25

    invoke-direct {v0, v2, v1}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->addAffectedList(ILjava/util/ArrayList;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x26

    invoke-direct {v0, v2, v1}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->addAffectedList(ILjava/util/ArrayList;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/16 v2, 0x28

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x38

    invoke-direct {v0, v2, v1}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->addAffectedList(ILjava/util/ArrayList;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {v0, v9, v1}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->addAffectedList(ILjava/util/ArrayList;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private makeExtraExclusiveRelations()V
    .registers 9

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mTaskArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6b

    iget-object v2, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mTaskArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;

    iget-object v3, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mAffectListChain:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_21

    goto :goto_68

    :cond_21
    move v4, v0

    :goto_22
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_68

    iget-object v5, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mAffectListChain:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-nez v5, :cond_50

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v6

    iget v6, v2, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;->mHostId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mAffectListChain:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_50
    iget v6, v2, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;->mHostId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_65

    iget v6, v2, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;->mHostId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_65
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    :cond_68
    :goto_68
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6b
    return-void
.end method

.method private registerPostProcess()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mPostProcessList:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/sepunion/ExclusiveTaskManagerService$AssistantPostProcess;

    iget-object v3, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->this$0:Lcom/android/server/sepunion/ExclusiveTaskManagerService;

    invoke-direct {v2, v3}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$AssistantPostProcess;-><init>(Lcom/android/server/sepunion/ExclusiveTaskManagerService;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mPostProcessList:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ColorBlindPostProcess;

    iget-object v3, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->this$0:Lcom/android/server/sepunion/ExclusiveTaskManagerService;

    invoke-direct {v2, v3}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ColorBlindPostProcess;-><init>(Lcom/android/server/sepunion/ExclusiveTaskManagerService;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mPostProcessList:Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ColorLensPostProcess;

    iget-object v3, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->this$0:Lcom/android/server/sepunion/ExclusiveTaskManagerService;

    invoke-direct {v2, v3}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ColorLensPostProcess;-><init>(Lcom/android/server/sepunion/ExclusiveTaskManagerService;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mPostProcessList:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/sepunion/ExclusiveTaskManagerService$NegativePostProcess;

    iget-object v3, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->this$0:Lcom/android/server/sepunion/ExclusiveTaskManagerService;

    invoke-direct {v2, v3}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$NegativePostProcess;-><init>(Lcom/android/server/sepunion/ExclusiveTaskManagerService;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mPostProcessList:Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/sepunion/ExclusiveTaskManagerService$GrayScalePostProcess;

    iget-object v3, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->this$0:Lcom/android/server/sepunion/ExclusiveTaskManagerService;

    invoke-direct {v2, v3}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$GrayScalePostProcess;-><init>(Lcom/android/server/sepunion/ExclusiveTaskManagerService;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mPostProcessList:Ljava/util/HashMap;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/sepunion/ExclusiveTaskManagerService$TurnOffAllSoundPostProcess;

    iget-object v3, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->this$0:Lcom/android/server/sepunion/ExclusiveTaskManagerService;

    invoke-direct {v2, v3}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$TurnOffAllSoundPostProcess;-><init>(Lcom/android/server/sepunion/ExclusiveTaskManagerService;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mPostProcessList:Ljava/util/HashMap;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/sepunion/ExclusiveTaskManagerService$OneHandModePostProcess;

    iget-object v3, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->this$0:Lcom/android/server/sepunion/ExclusiveTaskManagerService;

    invoke-direct {v2, v3}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$OneHandModePostProcess;-><init>(Lcom/android/server/sepunion/ExclusiveTaskManagerService;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mPostProcessList:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/sepunion/ExclusiveTaskManagerService$InteractionControlPostProcess;

    iget-object v3, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->this$0:Lcom/android/server/sepunion/ExclusiveTaskManagerService;

    invoke-direct {v2, v3}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$InteractionControlPostProcess;-><init>(Lcom/android/server/sepunion/ExclusiveTaskManagerService;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mPostProcessList:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/sepunion/ExclusiveTaskManagerService$SoundDetectorDoorBellPostProcess;

    iget-object v3, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->this$0:Lcom/android/server/sepunion/ExclusiveTaskManagerService;

    invoke-direct {v2, v3}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$SoundDetectorDoorBellPostProcess;-><init>(Lcom/android/server/sepunion/ExclusiveTaskManagerService;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mPostProcessList:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/sepunion/ExclusiveTaskManagerService$SoundDetectorBabyCryPostProcess;

    iget-object v3, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->this$0:Lcom/android/server/sepunion/ExclusiveTaskManagerService;

    invoke-direct {v2, v3}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$SoundDetectorBabyCryPostProcess;-><init>(Lcom/android/server/sepunion/ExclusiveTaskManagerService;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mPostProcessList:Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/sepunion/ExclusiveTaskManagerService$AirMotionPostProcess;

    iget-object v3, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->this$0:Lcom/android/server/sepunion/ExclusiveTaskManagerService;

    invoke-direct {v2, v3}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$AirMotionPostProcess;-><init>(Lcom/android/server/sepunion/ExclusiveTaskManagerService;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mPostProcessList:Ljava/util/HashMap;

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/sepunion/ExclusiveTaskManagerService$AirMotionPostProcess;

    iget-object v3, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->this$0:Lcom/android/server/sepunion/ExclusiveTaskManagerService;

    invoke-direct {v2, v3}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$AirMotionPostProcess;-><init>(Lcom/android/server/sepunion/ExclusiveTaskManagerService;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mPostProcessList:Ljava/util/HashMap;

    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/sepunion/ExclusiveTaskManagerService$RemoveAnimationPostProcess;

    iget-object v3, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->this$0:Lcom/android/server/sepunion/ExclusiveTaskManagerService;

    invoke-direct {v2, v3}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$RemoveAnimationPostProcess;-><init>(Lcom/android/server/sepunion/ExclusiveTaskManagerService;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mPostProcessList:Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/sepunion/ExclusiveTaskManagerService$EdgeScreenPostProcess;

    iget-object v3, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->this$0:Lcom/android/server/sepunion/ExclusiveTaskManagerService;

    invoke-direct {v2, v3}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$EdgeScreenPostProcess;-><init>(Lcom/android/server/sepunion/ExclusiveTaskManagerService;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mPostProcessList:Ljava/util/HashMap;

    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/sepunion/ExclusiveTaskManagerService$EasyMutePostProcess;

    iget-object v3, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->this$0:Lcom/android/server/sepunion/ExclusiveTaskManagerService;

    invoke-direct {v2, v3}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$EasyMutePostProcess;-><init>(Lcom/android/server/sepunion/ExclusiveTaskManagerService;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mPostProcessList:Ljava/util/HashMap;

    const/16 v1, 0x38

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/sepunion/ExclusiveTaskManagerService$NightModePostProcess;

    iget-object v3, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->this$0:Lcom/android/server/sepunion/ExclusiveTaskManagerService;

    invoke-direct {v2, v3}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$NightModePostProcess;-><init>(Lcom/android/server/sepunion/ExclusiveTaskManagerService;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private registerPreProcess()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mPreProcessList:Ljava/util/HashMap;

    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/sepunion/ExclusiveTaskManagerService$RemoveAnimationPreProcess;

    iget-object v3, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->this$0:Lcom/android/server/sepunion/ExclusiveTaskManagerService;

    invoke-direct {v2, v3}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$RemoveAnimationPreProcess;-><init>(Lcom/android/server/sepunion/ExclusiveTaskManagerService;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private sendReplaceMsg(Landroid/os/Handler;IIILjava/lang/Object;I)V
    .registers 11

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    int-to-long v2, p6

    add-long/2addr v0, v2

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method private updateTaskArray_Internal(III)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mTaskArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_84

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_84

    iget-object v2, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mTaskArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;

    iget v3, v2, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;->mHostId:I

    if-ne v3, p1, :cond_81

    iget v3, v2, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;->mState:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_43

    if-nez p2, :cond_43

    const-string v3, "ExclusiveTaskService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ExclusiveTask]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mAppName:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " was turned off already."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sepunion/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_43
    iget v3, v2, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;->mState:I

    if-eq v3, p2, :cond_80

    const-string v3, "ExclusiveTaskService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ExclusiveTask]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mAppName:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " state is changed to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sepunion/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput p2, v2, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;->mState:I

    iput p3, v2, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;->mValue:I

    iget-object v3, v2, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;->mFrom:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mTaskArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mTaskArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_80
    return-void

    :cond_81
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_84
    new-instance v1, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;-><init>(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;Lcom/android/server/sepunion/ExclusiveTaskManagerService$1;)V

    iput p1, v1, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;->mHostId:I

    iput p2, v1, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;->mState:I

    iput p3, v1, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;->mValue:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;->mFrom:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mTaskArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private updateTaskStateLocked(III)V
    .registers 26

    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p2

    const-string v0, "ExclusiveTaskService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ExclusiveTask]updateTaskStateLocked aFrom=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mAppName:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p3

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p3}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->updateTaskArray_Internal(III)V

    iget-object v12, v8, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_3c
    iget-object v0, v8, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mTaskArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v13, 0x0

    move v1, v13

    :goto_44
    move v14, v1

    if-ge v14, v0, :cond_1d5

    iget-object v1, v8, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mTaskArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;

    move-object v15, v1

    iget v1, v15, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;->mHostId:I

    move v7, v1

    if-ne v9, v7, :cond_57

    goto/16 :goto_1d0

    :cond_57
    const-wide/16 v1, 0x12c

    const/4 v3, 0x2

    const/4 v5, 0x1

    if-ne v10, v5, :cond_12b

    iget-object v6, v8, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mAffectListChain:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_6b

    goto/16 :goto_1d0

    :cond_6b
    iget-object v4, v8, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mAffectListChain:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_1d0

    iget v4, v15, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;->mState:I

    if-eqz v4, :cond_1d0

    iget v4, v15, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;->mState:I

    if-ne v4, v5, :cond_cf

    iget-object v4, v8, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mMainHandler:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$MainHandler;

    iget v5, v15, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;->mValue:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v7, v13, v5}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$MainHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    move-object v5, v3

    iget-object v3, v8, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mMainHandler:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$MainHandler;

    invoke-virtual {v3, v5, v1, v2}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/16 v1, 0x64

    iput v1, v15, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;->mState:I

    invoke-direct/range {p0 .. p1}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->isVTU(I)Z

    move-result v1

    if-eqz v1, :cond_ac

    invoke-direct {v8, v14}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->isVTU(I)Z

    move-result v1

    if-nez v1, :cond_b5

    :cond_ac
    iget-object v1, v8, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mOnChangeIgnoreList:Ljava/util/ArrayList;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b5
    iget-object v2, v8, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mMainHandler:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$MainHandler;

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x7d0

    move-object v1, v8

    move-object/from16 v19, v5

    move/from16 v5, v16

    move v13, v6

    move-object/from16 v6, v17

    move/from16 v20, v7

    move/from16 v7, v18

    invoke-direct/range {v1 .. v7}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->sendReplaceMsg(Landroid/os/Handler;IIILjava/lang/Object;I)V

    goto :goto_d2

    :cond_cf
    move v13, v6

    move/from16 v20, v7

    :goto_d2
    iget-object v1, v15, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;->mFrom:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ne v1, v13, :cond_11d

    const-string v1, "ExclusiveTaskService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ExclusiveTask]Add ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mAppName:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] to fromList of ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mAppName:Ljava/util/ArrayList;

    move/from16 v4, v20

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v15, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;->mFrom:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11f

    :cond_11d
    move/from16 v4, v20

    :goto_11f
    iget-object v1, v8, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mTaskArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, v8, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mTaskArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v14, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_1d0

    :cond_12b
    move v4, v7

    iget-object v6, v15, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;->mFrom:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    const/4 v13, 0x0

    :goto_134
    if-ge v13, v6, :cond_156

    iget-object v1, v15, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;->mFrom:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v9, :cond_151

    iget v1, v15, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;->mState:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_151

    iget-object v1, v15, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;->mFrom:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v7, 0x1

    goto :goto_156

    :cond_151
    add-int/lit8 v13, v13, 0x1

    const-wide/16 v1, 0x12c

    goto :goto_134

    :cond_156
    :goto_156
    iget v1, v15, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;->mState:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_17d

    iget-object v1, v15, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;->mFrom:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_17d

    iput v5, v15, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;->mState:I

    iget-object v1, v8, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mOnChangeIgnoreList:Ljava/util/ArrayList;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-boolean v1, v8, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mNowDBReset:Z

    if-eqz v1, :cond_17c

    iget v1, v15, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;->mHostId:I

    invoke-direct {v8, v1}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->isA11YFunction(I)Z

    move-result v1

    if-eqz v1, :cond_17c

    goto :goto_1d0

    :cond_17c
    const/4 v7, 0x1

    :cond_17d
    if-eqz v7, :cond_1d0

    iget-object v1, v8, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mTaskArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, v8, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mTaskArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v14, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget v1, v15, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;->mState:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_1bb

    iget-object v1, v15, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;->mFrom:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v5, :cond_1bb

    const-string v1, "ExclusiveTaskService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ExclusiveTask]Can not turn on package ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mAppName:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] because of other task"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d0

    :cond_1bb
    iget-object v1, v8, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mMainHandler:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$MainHandler;

    iget v2, v15, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;->mValue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v4, v5, v2}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$MainHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, v8, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mMainHandler:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$MainHandler;

    move/from16 v21, v4

    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1d0
    :goto_1d0
    add-int/lit8 v1, v14, 0x1

    const/4 v13, 0x0

    goto/16 :goto_44

    :cond_1d5
    monitor-exit v12

    return-void

    :catchall_1d7
    move-exception v0

    monitor-exit v12
    :try_end_1d9
    .catchall {:try_start_3c .. :try_end_1d9} :catchall_1d7

    throw v0
.end method


# virtual methods
.method public addToAffectedList(II)Z
    .registers 7

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mAffectListChain:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_23

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mAffectListChain:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_23
    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mAffectListChain:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4b

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mAffectListChain:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_4b
    const/4 v1, 0x0

    return v1
.end method

.method public destroyExclusiveTaskService()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mExclusiveTaskObserver:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;

    # invokes: Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->unregisterObserver()V
    invoke-static {v0}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->access$000(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;)V

    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 13

    const-string v0, "\nTask Array"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "=========================================================================="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_c
    iget-object v2, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mTaskArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_ac

    iget-object v2, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mTaskArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;

    const-string v3, "%20s"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mAppName:Ljava/util/ArrayList;

    iget v7, v2, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;->mHostId:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v2, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;->mState:I

    const/16 v6, 0x64

    if-eq v5, v6, :cond_4d

    packed-switch v5, :pswitch_data_ae

    goto :goto_52

    :pswitch_41
    const-string v5, "O"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_52

    :pswitch_47
    const-string v5, "X"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_52

    :cond_4d
    const-string v5, "F"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_52
    const-string v5, "     [Value="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v2, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;->mValue:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, "]"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v2, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;->mState:I

    if-ne v5, v6, :cond_6a

    const-string v5, "\n       =>Due to ["

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_6a
    move v5, v0

    :goto_6b
    iget-object v7, v2, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;->mFrom:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_9b

    iget-object v7, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mAppName:Ljava/util/ArrayList;

    iget-object v8, v2, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;->mFrom:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v2, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;->mFrom:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v4

    if-eq v5, v7, :cond_98

    const-string v7, ","

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_98
    add-int/lit8 v5, v5, 0x1

    goto :goto_6b

    :cond_9b
    iget v4, v2, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;->mState:I

    if-ne v4, v6, :cond_a5

    const-string v4, "]\n"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_a8

    :cond_a5
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :goto_a8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_c

    :cond_ac
    return-void

    nop

    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_47
        :pswitch_41
    .end packed-switch
.end method

.method public getAffectedList(I)[I
    .registers 7

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mAffectListChain:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    return-object v0

    :cond_e
    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mAffectListChain:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [I

    const/4 v3, 0x0

    :goto_21
    if-ge v3, v1, :cond_32

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_32
    return-object v2
.end method

.method public getId(ILjava/lang/String;Ljava/lang/String;)I
    .registers 16

    const-string v0, "enabled_accessibility_services"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_fe

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "enabled_accessibility_services"

    const/4 v5, -0x2

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_22

    const-string v2, "ExclusiveTaskService"

    const-string v3, "[ExclusiveTask] failed to get Id of VTU."

    invoke-static {v2, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_22
    const-string v4, "com.samsung.accessibility.universalswitch.UniversalSwitchService"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "com.google.android.marvin.talkback.TalkBackService"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "com.samsung.android.app.talkback.TalkBackService"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, "com.google.android.accessibility.accessibilitymenu.AccessibilityMenuService"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v8, "com.google.android.accessibility.selecttospeak.SelectToSpeakService"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    const/16 v9, 0x39

    if-eqz v7, :cond_50

    iget-object v10, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mTaskArray:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;

    iget v10, v10, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;->mState:I

    if-ne v10, v3, :cond_5e

    :cond_50
    if-nez v7, :cond_5f

    iget-object v10, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mTaskArray:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;

    iget v10, v10, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;->mState:I

    if-ne v10, v3, :cond_5f

    :cond_5e
    return v9

    :cond_5f
    const/16 v9, 0x3a

    if-eqz v8, :cond_6f

    iget-object v10, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mTaskArray:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;

    iget v10, v10, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;->mState:I

    if-ne v10, v3, :cond_7d

    :cond_6f
    if-nez v8, :cond_7e

    iget-object v10, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mTaskArray:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;

    iget v10, v10, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;->mState:I

    if-ne v10, v3, :cond_7e

    :cond_7d
    return v9

    :cond_7e
    if-eqz v4, :cond_8d

    iget-object v9, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mTaskArray:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;

    iget v9, v9, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;->mState:I

    if-eq v9, v3, :cond_8d

    return v3

    :cond_8d
    if-eqz v6, :cond_9e

    iget-object v9, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mTaskArray:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;

    iget v9, v9, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;->mState:I

    if-eq v9, v3, :cond_9e

    iput v2, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mLastVTUServiceId:I

    return v2

    :cond_9e
    const/16 v9, 0x2710

    if-eqz v5, :cond_b1

    iget-object v10, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mTaskArray:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;

    iget v10, v10, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;->mState:I

    if-eq v10, v3, :cond_b1

    iput v9, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mLastVTUServiceId:I

    return v2

    :cond_b1
    const/4 v10, -0x1

    if-nez v4, :cond_c2

    iget-object v11, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mTaskArray:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;

    iget v11, v11, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;->mState:I

    if-ne v11, v3, :cond_c2

    const/4 v10, 0x1

    goto :goto_fd

    :cond_c2
    iget-object v11, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mTaskArray:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;

    iget v11, v11, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;->mState:I

    if-ne v11, v3, :cond_fd

    if-nez v6, :cond_d6

    if-nez v5, :cond_d6

    const/4 v10, 0x0

    iput v1, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mLastVTUServiceId:I

    goto :goto_fd

    :cond_d6
    if-ne v6, v3, :cond_f4

    if-ne v5, v3, :cond_f4

    iget-object v1, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    iget v3, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mLastVTUServiceId:I

    if-nez v3, :cond_ec

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->semTurnOffAccessibilityService(I)V

    iput v9, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mLastVTUServiceId:I

    goto :goto_f3

    :cond_ec
    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityManager;->semTurnOffAccessibilityService(I)V

    iput v2, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mLastVTUServiceId:I

    :goto_f3
    goto :goto_fd

    :cond_f4
    if-ne v6, v3, :cond_f9

    iput v2, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mLastVTUServiceId:I

    goto :goto_fd

    :cond_f9
    if-ne v5, v3, :cond_fd

    iput v9, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mLastVTUServiceId:I

    :cond_fd
    :goto_fd
    return v10

    :cond_fe
    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mActionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v4, v2

    :goto_105
    if-ge v4, v0, :cond_11f

    iget-object v5, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mActionList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;

    iget v6, v5, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;->mDBType:I

    if-eq v6, v1, :cond_11c

    iget-object v6, v5, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;->mAttribute:Ljava/lang/String;

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11c

    return v4

    :cond_11c
    add-int/lit8 v4, v4, 0x1

    goto :goto_105

    :cond_11f
    iget-object v1, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mExclusiveTaskObserver:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;

    # invokes: Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->addObserver(ILjava/lang/String;)V
    invoke-static {v1, p1, p2}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->access$2100(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;ILjava/lang/String;)V

    iget v1, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mUniqueId:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mUniqueId:I

    if-nez p3, :cond_13f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APP "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mUniqueId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_140

    :cond_13f
    move-object v1, p3

    :goto_140
    iget-object v4, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mAppName:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    new-instance v5, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;-><init>(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;Lcom/android/server/sepunion/ExclusiveTaskManagerService$1;)V

    if-nez p1, :cond_15b

    iget-object v6, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, p2, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput-object p2, v5, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;->mAttribute:Ljava/lang/String;

    goto :goto_176

    :cond_15b
    if-ne p1, v3, :cond_16a

    iget-object v6, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, p2, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput-object p2, v5, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;->mAttribute:Ljava/lang/String;

    goto :goto_176

    :cond_16a
    iget-object v6, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, p2, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput-object p2, v5, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;->mAttribute:Ljava/lang/String;

    :goto_176
    iget-object v6, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mActionList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mUniqueId:I

    invoke-virtual {v6, v7, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mUniqueId:I

    if-ne v4, v6, :cond_183

    goto :goto_184

    :cond_183
    move v2, v3

    :goto_184
    invoke-direct {p0, v7, v2, v4}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->updateTaskArray_Internal(III)V

    iget v2, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mUniqueId:I

    return v2
.end method

.method public removeFromAffectedList(II)Z
    .registers 7

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mAffectListChain:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return v1

    :cond_e
    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mAffectListChain:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3b

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mAffectListChain:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    return v1

    :cond_3b
    return v1
.end method

.method public setAffectedList(I[IZ)I
    .registers 10

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mAffectListChain:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1a

    if-eqz p3, :cond_18

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mAffectListChain:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    :cond_18
    const/4 v0, 0x1

    return v0

    :cond_1a
    :goto_1a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_22
    if-ge v3, v1, :cond_30

    aget v4, p2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_30
    iget-object v1, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mAffectListChain:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2
.end method

.method public updateTaskArrayForceOffForcibly(II)Z
    .registers 9

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mTaskArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_42

    iget-object v3, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mTaskArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;

    iget v4, v3, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;->mHostId:I

    if-ne v4, p1, :cond_3f

    iget-object v4, v3, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;->mFrom:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3e

    const/16 v1, 0x64

    iput v1, v3, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;->mState:I

    const/4 v1, 0x1

    iput v1, v3, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;->mValue:I

    iget-object v4, v3, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;->mFrom:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mTaskArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mTaskArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return v1

    :cond_3e
    return v1

    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_42
    return v1
.end method
