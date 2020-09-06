.class public Landroid/net/dhcp/DhcpClient;
.super Lcom/android/internal/util/StateMachine;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/dhcp/DhcpClient$DhcpRebootingState;,
        Landroid/net/dhcp/DhcpClient$DhcpInitRebootState;,
        Landroid/net/dhcp/DhcpClient$DhcpRebindingState;,
        Landroid/net/dhcp/DhcpClient$DhcpRenewingState;,
        Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;,
        Landroid/net/dhcp/DhcpClient$DhcpBoundState;,
        Landroid/net/dhcp/DhcpClient$ConfiguringInterfaceState;,
        Landroid/net/dhcp/DhcpClient$DhcpHaveLeaseState;,
        Landroid/net/dhcp/DhcpClient$DhcpRequestingState;,
        Landroid/net/dhcp/DhcpClient$DhcpPreRequestingState;,
        Landroid/net/dhcp/DhcpClient$DhcpSelectingState;,
        Landroid/net/dhcp/DhcpClient$DhcpInitState;,
        Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;,
        Landroid/net/dhcp/DhcpClient$DhcpState;,
        Landroid/net/dhcp/DhcpClient$WaitBeforeRenewalState;,
        Landroid/net/dhcp/DhcpClient$WaitBeforeStartState;,
        Landroid/net/dhcp/DhcpClient$StoppedState;,
        Landroid/net/dhcp/DhcpClient$WaitBeforeOtherState;,
        Landroid/net/dhcp/DhcpClient$LoggingState;,
        Landroid/net/dhcp/DhcpClient$ReceiveThread;
    }
.end annotation


# static fields
.field public static final CMD_CLEAR_LINKADDRESS:I = 0x30007

.field public static final CMD_CONFIGURE_LINKADDRESS:I = 0x30008

.field private static final CMD_EXPIRE_DHCP:I = 0x3006a

.field private static final CMD_KICK:I = 0x30065

.field public static final CMD_ON_QUIT:I = 0x30005

.field public static final CMD_POST_DHCP_ACTION:I = 0x30004

.field public static final CMD_PRE_DHCP_ACTION:I = 0x30003

.field public static final CMD_PRE_DHCP_ACTION_COMPLETE:I = 0x30006

.field private static final CMD_REBIND_DHCP:I = 0x30069

.field private static final CMD_RECEIVED_PACKET:I = 0x30066

.field public static final CMD_RELEASE:I = 0x3000b

.field private static final CMD_RENEW_DHCP:I = 0x30068

.field public static final CMD_START_DHCP:I = 0x30001

.field public static final CMD_STOP_DHCP:I = 0x30002

.field private static final CMD_TIMEOUT:I = 0x30067

.field private static final DBG:Z

.field public static final DHCP_FAILURE:I = 0x2

.field public static final DHCP_SUCCESS:I = 0x1

.field private static final DHCP_TIMEOUT_MS:I = 0x8ca0

.field private static final DO_UNICAST:Z = false

.field public static final EVENT_LINKADDRESS_CONFIGURED:I = 0x30009

.field private static final FIRST_TIMEOUT_MS:I = 0x3e8

.field private static final MAX_TIMEOUT_MS:I = 0xfa000

.field private static final MSG_DBG:Z = false

.field private static final PACKET_DBG:Z = false

.field private static final PRIVATE_BASE:I = 0x30064

.field private static final PUBLIC_BASE:I = 0x30000

.field static final REQUESTED_PARAMS:[B

.field private static final SECONDS:I = 0x3e8

.field private static final STATE_DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "DhcpClient"

.field private static final sMessageClasses:[Ljava/lang/Class;

.field private static final sMessageNames:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mConfiguringInterfaceState:Lcom/android/internal/util/State;

.field private mConnectedBssidString:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/internal/util/StateMachine;

.field private mDhcpBoundState:Lcom/android/internal/util/State;

.field private mDhcpHaveLeaseState:Lcom/android/internal/util/State;

.field private mDhcpInitRebootState:Lcom/android/internal/util/State;

.field private mDhcpInitState:Lcom/android/internal/util/State;

.field private mDhcpLease:Landroid/net/DhcpResults;

.field private mDhcpLeaseExpiry:J

.field private mDhcpPreRequestingState:Lcom/android/internal/util/State;

.field private mDhcpRebindingState:Lcom/android/internal/util/State;

.field private mDhcpRebootingState:Lcom/android/internal/util/State;

.field private mDhcpRenewingState:Lcom/android/internal/util/State;

.field private mDhcpRequestingState:Lcom/android/internal/util/State;

.field private mDhcpSelectingState:Lcom/android/internal/util/State;

.field private mDhcpState:Lcom/android/internal/util/State;

.field private final mExpiryAlarm:Lcom/android/internal/util/WakeupMessage;

.field private mHwAddr:[B

.field private mIface:Landroid/net/util/InterfaceParams;

.field private final mIfaceName:Ljava/lang/String;

.field private mInterfaceBroadcastAddr:Landroid/system/PacketSocketAddress;

.field private final mKickAlarm:Lcom/android/internal/util/WakeupMessage;

.field private mLastBoundExitTime:J

.field private mLastInitEnterTime:J

.field private final mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

.field private mOffer:Landroid/net/DhcpResults;

.field private mPacketSock:Ljava/io/FileDescriptor;

.field private final mRandom:Ljava/util/Random;

.field private final mRebindAlarm:Lcom/android/internal/util/WakeupMessage;

.field private mReceiveThread:Landroid/net/dhcp/DhcpClient$ReceiveThread;

.field private mRegisteredForPreDhcpNotification:Z

.field private mRegisteredForPreDhcpRequest:Z

.field private final mRenewAlarm:Lcom/android/internal/util/WakeupMessage;

.field private mSemUtil:Landroid/net/dhcp/SemDhcpClientUtil;

.field private mStoppedState:Lcom/android/internal/util/State;

.field private final mTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

.field private mTransactionId:I

.field private mTransactionStartMillis:J

.field private mUdpSock:Ljava/io/FileDescriptor;

.field private mWaitBeforeRenewalState:Lcom/android/internal/util/State;

.field private mWaitBeforeStartState:Lcom/android/internal/util/State;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Landroid/net/dhcp/DhcpClient;->DBG:Z

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/net/dhcp/DhcpClient;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Landroid/net/dhcp/DhcpClient;->sMessageClasses:[Ljava/lang/Class;

    sget-object v0, Landroid/net/dhcp/DhcpClient;->sMessageClasses:[Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Landroid/net/dhcp/DhcpClient;->sMessageNames:Landroid/util/SparseArray;

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_22

    sput-object v0, Landroid/net/dhcp/DhcpClient;->REQUESTED_PARAMS:[B

    return-void

    :array_22
    .array-data 1
        0x1t
        0x3t
        0x6t
        0xft
        0x1at
        0x1ct
        0x33t
        0x3at
        0x3bt
        0x2bt
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)V
    .registers 6

    const-string v0, "DhcpClient"

    invoke-virtual {p2}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    new-instance v0, Landroid/net/metrics/IpConnectivityLog;

    invoke-direct {v0}, Landroid/net/metrics/IpConnectivityLog;-><init>()V

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    new-instance v0, Landroid/net/dhcp/DhcpClient$StoppedState;

    invoke-direct {v0, p0}, Landroid/net/dhcp/DhcpClient$StoppedState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mStoppedState:Lcom/android/internal/util/State;

    new-instance v0, Landroid/net/dhcp/DhcpClient$DhcpState;

    invoke-direct {v0, p0}, Landroid/net/dhcp/DhcpClient$DhcpState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/internal/util/State;

    new-instance v0, Landroid/net/dhcp/DhcpClient$DhcpInitState;

    invoke-direct {v0, p0}, Landroid/net/dhcp/DhcpClient$DhcpInitState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpInitState:Lcom/android/internal/util/State;

    new-instance v0, Landroid/net/dhcp/DhcpClient$DhcpSelectingState;

    invoke-direct {v0, p0}, Landroid/net/dhcp/DhcpClient$DhcpSelectingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpSelectingState:Lcom/android/internal/util/State;

    new-instance v0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;

    invoke-direct {v0, p0}, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRequestingState:Lcom/android/internal/util/State;

    new-instance v0, Landroid/net/dhcp/DhcpClient$DhcpHaveLeaseState;

    invoke-direct {v0, p0}, Landroid/net/dhcp/DhcpClient$DhcpHaveLeaseState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpHaveLeaseState:Lcom/android/internal/util/State;

    new-instance v0, Landroid/net/dhcp/DhcpClient$ConfiguringInterfaceState;

    invoke-direct {v0, p0}, Landroid/net/dhcp/DhcpClient$ConfiguringInterfaceState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mConfiguringInterfaceState:Lcom/android/internal/util/State;

    new-instance v0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;

    invoke-direct {v0, p0}, Landroid/net/dhcp/DhcpClient$DhcpBoundState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpBoundState:Lcom/android/internal/util/State;

    new-instance v0, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;

    invoke-direct {v0, p0}, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRenewingState:Lcom/android/internal/util/State;

    new-instance v0, Landroid/net/dhcp/DhcpClient$DhcpRebindingState;

    invoke-direct {v0, p0}, Landroid/net/dhcp/DhcpClient$DhcpRebindingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRebindingState:Lcom/android/internal/util/State;

    new-instance v0, Landroid/net/dhcp/DhcpClient$DhcpInitRebootState;

    invoke-direct {v0, p0}, Landroid/net/dhcp/DhcpClient$DhcpInitRebootState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpInitRebootState:Lcom/android/internal/util/State;

    new-instance v0, Landroid/net/dhcp/DhcpClient$DhcpRebootingState;

    invoke-direct {v0, p0}, Landroid/net/dhcp/DhcpClient$DhcpRebootingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRebootingState:Lcom/android/internal/util/State;

    new-instance v0, Landroid/net/dhcp/DhcpClient$WaitBeforeStartState;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpInitState:Lcom/android/internal/util/State;

    invoke-direct {v0, p0, v1}, Landroid/net/dhcp/DhcpClient$WaitBeforeStartState;-><init>(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/State;)V

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mWaitBeforeStartState:Lcom/android/internal/util/State;

    new-instance v0, Landroid/net/dhcp/DhcpClient$WaitBeforeRenewalState;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRenewingState:Lcom/android/internal/util/State;

    invoke-direct {v0, p0, v1}, Landroid/net/dhcp/DhcpClient$WaitBeforeRenewalState;-><init>(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/State;)V

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mWaitBeforeRenewalState:Lcom/android/internal/util/State;

    new-instance v0, Landroid/net/dhcp/DhcpClient$DhcpPreRequestingState;

    invoke-direct {v0, p0}, Landroid/net/dhcp/DhcpClient$DhcpPreRequestingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpPreRequestingState:Lcom/android/internal/util/State;

    iput-object p1, p0, Landroid/net/dhcp/DhcpClient;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/net/dhcp/DhcpClient;->mController:Lcom/android/internal/util/StateMachine;

    iput-object p3, p0, Landroid/net/dhcp/DhcpClient;->mIfaceName:Ljava/lang/String;

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mStoppedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;)V

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;)V

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpInitState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mWaitBeforeStartState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpSelectingState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpPreRequestingState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRequestingState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpHaveLeaseState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mConfiguringInterfaceState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpHaveLeaseState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpBoundState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpHaveLeaseState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mWaitBeforeRenewalState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpHaveLeaseState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRenewingState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpHaveLeaseState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRebindingState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpHaveLeaseState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpInitRebootState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRebootingState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mStoppedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Landroid/net/dhcp/DhcpClient;->setInitialState(Lcom/android/internal/util/State;)V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mRandom:Ljava/util/Random;

    const-string v0, "KICK"

    const v1, 0x30065

    invoke-direct {p0, v0, v1}, Landroid/net/dhcp/DhcpClient;->makeWakeupMessage(Ljava/lang/String;I)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mKickAlarm:Lcom/android/internal/util/WakeupMessage;

    const-string v0, "TIMEOUT"

    const v1, 0x30067

    invoke-direct {p0, v0, v1}, Landroid/net/dhcp/DhcpClient;->makeWakeupMessage(Ljava/lang/String;I)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    const-string v0, "RENEW"

    const v1, 0x30068

    invoke-direct {p0, v0, v1}, Landroid/net/dhcp/DhcpClient;->makeWakeupMessage(Ljava/lang/String;I)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mRenewAlarm:Lcom/android/internal/util/WakeupMessage;

    const-string v0, "REBIND"

    const v1, 0x30069

    invoke-direct {p0, v0, v1}, Landroid/net/dhcp/DhcpClient;->makeWakeupMessage(Ljava/lang/String;I)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mRebindAlarm:Lcom/android/internal/util/WakeupMessage;

    const-string v0, "EXPIRY"

    const v1, 0x3006a

    invoke-direct {p0, v0, v1}, Landroid/net/dhcp/DhcpClient;->makeWakeupMessage(Ljava/lang/String;I)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mExpiryAlarm:Lcom/android/internal/util/WakeupMessage;

    return-void
.end method

.method private acceptDhcpResults(Landroid/net/DhcpResults;Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLease:Landroid/net/DhcpResults;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mOffer:Landroid/net/DhcpResults;

    const-string v0, "DhcpClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " lease: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLease:Landroid/net/DhcpResults;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->notifySuccess()V

    return-void
.end method

.method static synthetic access$000(Landroid/net/dhcp/DhcpClient;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->closeSockets()V

    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    sget-boolean v0, Landroid/net/dhcp/DhcpClient;->DBG:Z

    return v0
.end method

.method static synthetic access$1000(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;
    .registers 2

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mWaitBeforeStartState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;
    .registers 2

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpInitState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/net/dhcp/DhcpClient;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->clearDhcpState()V

    return-void
.end method

.method static synthetic access$1300(Landroid/net/dhcp/DhcpClient;)Z
    .registers 2

    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->initInterface()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Landroid/net/dhcp/DhcpClient;)Z
    .registers 2

    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->initSockets()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Landroid/net/dhcp/DhcpClient;)Landroid/net/dhcp/DhcpClient$ReceiveThread;
    .registers 2

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mReceiveThread:Landroid/net/dhcp/DhcpClient$ReceiveThread;

    return-object v0
.end method

.method static synthetic access$1502(Landroid/net/dhcp/DhcpClient;Landroid/net/dhcp/DhcpClient$ReceiveThread;)Landroid/net/dhcp/DhcpClient$ReceiveThread;
    .registers 2

    iput-object p1, p0, Landroid/net/dhcp/DhcpClient;->mReceiveThread:Landroid/net/dhcp/DhcpClient$ReceiveThread;

    return-object p1
.end method

.method static synthetic access$1600(Landroid/net/dhcp/DhcpClient;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient;->notifyFailure(I)V

    return-void
.end method

.method static synthetic access$1700(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;
    .registers 2

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mStoppedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/WakeupMessage;
    .registers 2

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mKickAlarm:Lcom/android/internal/util/WakeupMessage;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/WakeupMessage;
    .registers 2

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/dhcp/DhcpClient;)Ljava/io/FileDescriptor;
    .registers 2

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mPacketSock:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/net/dhcp/DhcpClient;)Ljava/util/Random;
    .registers 2

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mRandom:Ljava/util/Random;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/net/dhcp/DhcpClient;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->startNewTransaction()V

    return-void
.end method

.method static synthetic access$2200(Landroid/net/dhcp/DhcpClient;)J
    .registers 3

    iget-wide v0, p0, Landroid/net/dhcp/DhcpClient;->mLastInitEnterTime:J

    return-wide v0
.end method

.method static synthetic access$2202(Landroid/net/dhcp/DhcpClient;J)J
    .registers 3

    iput-wide p1, p0, Landroid/net/dhcp/DhcpClient;->mLastInitEnterTime:J

    return-wide p1
.end method

.method static synthetic access$2300(Landroid/net/dhcp/DhcpClient;)Z
    .registers 2

    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->sendDiscoverPacket()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;
    .registers 2

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mOffer:Landroid/net/DhcpResults;

    return-object v0
.end method

.method static synthetic access$2402(Landroid/net/dhcp/DhcpClient;Landroid/net/DhcpResults;)Landroid/net/DhcpResults;
    .registers 2

    iput-object p1, p0, Landroid/net/dhcp/DhcpClient;->mOffer:Landroid/net/DhcpResults;

    return-object p1
.end method

.method static synthetic access$2500(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;
    .registers 2

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRequestingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$2600(Landroid/net/dhcp/DhcpClient;)Landroid/net/dhcp/SemDhcpClientUtil;
    .registers 2

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mSemUtil:Landroid/net/dhcp/SemDhcpClientUtil;

    return-object v0
.end method

.method static synthetic access$2700(Landroid/net/dhcp/DhcpClient;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mConnectedBssidString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Landroid/net/dhcp/DhcpClient;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;)Z
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/dhcp/DhcpClient;->sendRequestPacket(Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Landroid/net/dhcp/DhcpClient;Landroid/net/DhcpResults;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/dhcp/DhcpClient;->acceptDhcpResults(Landroid/net/DhcpResults;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Landroid/net/dhcp/DhcpClient;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient;->logError(I)V

    return-void
.end method

.method static synthetic access$3000(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;
    .registers 2

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mConfiguringInterfaceState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$3100(Landroid/net/dhcp/DhcpClient;)Z
    .registers 2

    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->sendReleasePacket()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/WakeupMessage;
    .registers 2

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mRenewAlarm:Lcom/android/internal/util/WakeupMessage;

    return-object v0
.end method

.method static synthetic access$3300(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/WakeupMessage;
    .registers 2

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mRebindAlarm:Lcom/android/internal/util/WakeupMessage;

    return-object v0
.end method

.method static synthetic access$3400(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/WakeupMessage;
    .registers 2

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mExpiryAlarm:Lcom/android/internal/util/WakeupMessage;

    return-object v0
.end method

.method static synthetic access$3500(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;
    .registers 2

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLease:Landroid/net/DhcpResults;

    return-object v0
.end method

.method static synthetic access$3600(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;
    .registers 2

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpBoundState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$3700(Landroid/net/dhcp/DhcpClient;Ljava/net/Inet4Address;)Z
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient;->connectUdpSock(Ljava/net/Inet4Address;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Landroid/net/dhcp/DhcpClient;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->scheduleLeaseTimers()V

    return-void
.end method

.method static synthetic access$3900(Landroid/net/dhcp/DhcpClient;)J
    .registers 3

    iget-wide v0, p0, Landroid/net/dhcp/DhcpClient;->mLastBoundExitTime:J

    return-wide v0
.end method

.method static synthetic access$3902(Landroid/net/dhcp/DhcpClient;J)J
    .registers 3

    iput-wide p1, p0, Landroid/net/dhcp/DhcpClient;->mLastBoundExitTime:J

    return-wide p1
.end method

.method static synthetic access$400(Landroid/net/dhcp/DhcpClient;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/dhcp/DhcpClient;->logState(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$4000(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;
    .registers 2

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mWaitBeforeRenewalState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$4100(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;
    .registers 2

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRenewingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$4200(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;
    .registers 2

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRebindingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$4300(Landroid/net/dhcp/DhcpClient;)Ljava/io/FileDescriptor;
    .registers 2

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method static synthetic access$4400(Ljava/io/FileDescriptor;)V
    .registers 1

    invoke-static {p0}, Landroid/net/dhcp/DhcpClient;->closeQuietly(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method static synthetic access$4500(Landroid/net/dhcp/DhcpClient;)Z
    .registers 2

    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->initUdpSocket()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500()Landroid/util/SparseArray;
    .registers 1

    sget-object v0, Landroid/net/dhcp/DhcpClient;->sMessageNames:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$600(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/StateMachine;
    .registers 2

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mController:Lcom/android/internal/util/StateMachine;

    return-object v0
.end method

.method static synthetic access$700(Landroid/net/dhcp/DhcpClient;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/net/dhcp/DhcpClient;->mRegisteredForPreDhcpNotification:Z

    return v0
.end method

.method static synthetic access$800(Landroid/net/dhcp/DhcpClient;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/net/dhcp/DhcpClient;->mRegisteredForPreDhcpRequest:Z

    return v0
.end method

.method static synthetic access$900(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;
    .registers 2

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpPreRequestingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method private clearDhcpState()V
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLease:Landroid/net/DhcpResults;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLeaseExpiry:J

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mOffer:Landroid/net/DhcpResults;

    return-void
.end method

.method private static closeQuietly(Ljava/io/FileDescriptor;)V
    .registers 2

    :try_start_0
    invoke-static {p0}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    :goto_5
    return-void
.end method

.method private closeSockets()V
    .registers 2

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->closeQuietly(Ljava/io/FileDescriptor;)V

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mPacketSock:Ljava/io/FileDescriptor;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->closeQuietly(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method private connectUdpSock(Ljava/net/Inet4Address;)Z
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    const/16 v1, 0x43

    invoke-static {v0, p1, v1}, Landroid/system/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    :try_end_7
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_7} :catch_9
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_7} :catch_9

    const/4 v0, 0x1

    return v0

    :catch_9
    move-exception v0

    const-string v1, "DhcpClient"

    const-string v2, "Error connecting UDP socket"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method private getHostNameFromDeviceName()Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "device_name"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5f

    const-string v2, "Any-latin; nfd; [:nonspacing mark:] remove; nfc"

    invoke-static {v2}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/icu/text/Transliterator;->transliterate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "[^[[a-z][A-Z][0-9][ ][-]]]"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    const-string v6, "-"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x2d

    if-lez v4, :cond_41

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_41

    const-string v4, "-+"

    const-string v6, ""

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_41
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_57

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_57

    invoke-direct {p0, v0}, Landroid/net/dhcp/DhcpClient;->replaceLast(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_57
    const-string v4, "-+"

    const-string v5, "-"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_5f
    const-string v2, "DhcpClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "hostname = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private getSecs()S
    .registers 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/net/dhcp/DhcpClient;->mTransactionStartMillis:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method private initInterface()Z
    .registers 4

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mIface:Landroid/net/util/InterfaceParams;

    if-nez v0, :cond_c

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mIfaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/util/InterfaceParams;->getByName(Ljava/lang/String;)Landroid/net/util/InterfaceParams;

    move-result-object v0

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mIface:Landroid/net/util/InterfaceParams;

    :cond_c
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mIface:Landroid/net/util/InterfaceParams;

    if-nez v0, :cond_2a

    const-string v0, "DhcpClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t determine InterfaceParams for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_2a
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mIface:Landroid/net/util/InterfaceParams;

    iget-object v0, v0, Landroid/net/util/InterfaceParams;->macAddr:Landroid/net/MacAddress;

    invoke-virtual {v0}, Landroid/net/MacAddress;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mHwAddr:[B

    new-instance v0, Landroid/system/PacketSocketAddress;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mIface:Landroid/net/util/InterfaceParams;

    iget v1, v1, Landroid/net/util/InterfaceParams;->index:I

    sget-object v2, Landroid/net/dhcp/DhcpPacket;->ETHER_BROADCAST:[B

    invoke-direct {v0, v1, v2}, Landroid/system/PacketSocketAddress;-><init>(I[B)V

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mInterfaceBroadcastAddr:Landroid/system/PacketSocketAddress;

    const/4 v0, 0x1

    return v0
.end method

.method private initPacketSocket()Z
    .registers 4

    :try_start_0
    sget v0, Landroid/system/OsConstants;->AF_PACKET:I

    sget v1, Landroid/system/OsConstants;->SOCK_RAW:I

    sget v2, Landroid/system/OsConstants;->ETH_P_IP:I

    invoke-static {v0, v1, v2}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mPacketSock:Ljava/io/FileDescriptor;

    new-instance v0, Landroid/system/PacketSocketAddress;

    sget v1, Landroid/system/OsConstants;->ETH_P_IP:I

    int-to-short v1, v1

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mIface:Landroid/net/util/InterfaceParams;

    iget v2, v2, Landroid/net/util/InterfaceParams;->index:I

    invoke-direct {v0, v1, v2}, Landroid/system/PacketSocketAddress;-><init>(SI)V

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mPacketSock:Ljava/io/FileDescriptor;

    invoke-static {v1, v0}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mPacketSock:Ljava/io/FileDescriptor;

    invoke-static {v1}, Landroid/net/NetworkUtils;->attachDhcpFilter(Ljava/io/FileDescriptor;)V
    :try_end_22
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_22} :catch_25
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_22} :catch_25

    nop

    const/4 v0, 0x1

    return v0

    :catch_25
    move-exception v0

    const-string v1, "DhcpClient"

    const-string v2, "Error creating packet socket"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method private initSockets()Z
    .registers 2

    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->initPacketSocket()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->initUdpSocket()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private initUdpSocket()Z
    .registers 8

    const/16 v0, -0xc0

    invoke-static {v0}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v0

    const/4 v1, 0x0

    :try_start_7
    sget v2, Landroid/system/OsConstants;->AF_INET:I

    sget v3, Landroid/system/OsConstants;->SOCK_DGRAM:I

    sget v4, Landroid/system/OsConstants;->IPPROTO_UDP:I

    invoke-static {v2, v3, v4}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v2

    iput-object v2, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    sget v3, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v4, Landroid/system/OsConstants;->SO_REUSEADDR:I

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Landroid/system/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    sget v3, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v4, Landroid/system/OsConstants;->SO_BINDTODEVICE:I

    iget-object v6, p0, Landroid/net/dhcp/DhcpClient;->mIfaceName:Ljava/lang/String;

    invoke-static {v2, v3, v4, v6}, Landroid/system/Os;->setsockoptIfreq(Ljava/io/FileDescriptor;IILjava/lang/String;)V

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    sget v3, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v4, Landroid/system/OsConstants;->SO_BROADCAST:I

    invoke-static {v2, v3, v4, v5}, Landroid/system/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    sget v3, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v4, Landroid/system/OsConstants;->SO_RCVBUF:I

    invoke-static {v2, v3, v4, v1}, Landroid/system/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    sget-object v3, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    const/16 v4, 0x44

    invoke-static {v2, v3, v4}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    invoke-static {v2}, Landroid/net/NetworkUtils;->protectFromVpn(Ljava/io/FileDescriptor;)Z
    :try_end_48
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_48} :catch_4f
    .catch Landroid/system/ErrnoException; {:try_start_7 .. :try_end_48} :catch_4f
    .catchall {:try_start_7 .. :try_end_48} :catchall_4d

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    nop

    return v5

    :catchall_4d
    move-exception v1

    goto :goto_5c

    :catch_4f
    move-exception v2

    :try_start_50
    const-string v3, "DhcpClient"

    const-string v4, "Error creating UDP socket"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_57
    .catchall {:try_start_50 .. :try_end_57} :catchall_4d

    nop

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    return v1

    :goto_5c
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    throw v1
.end method

.method private logError(I)V
    .registers 5

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mIfaceName:Ljava/lang/String;

    new-instance v2, Landroid/net/metrics/DhcpErrorEvent;

    invoke-direct {v2, p1}, Landroid/net/metrics/DhcpErrorEvent;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/net/metrics/IpConnectivityLog;->log(Ljava/lang/String;Landroid/os/Parcelable;)Z

    return-void
.end method

.method private logState(Ljava/lang/String;I)V
    .registers 6

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mIfaceName:Ljava/lang/String;

    new-instance v2, Landroid/net/metrics/DhcpClientEvent;

    invoke-direct {v2, p1, p2}, Landroid/net/metrics/DhcpClientEvent;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Landroid/net/metrics/IpConnectivityLog;->log(Ljava/lang/String;Landroid/os/Parcelable;)Z

    return-void
.end method

.method public static makeDhcpClient(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Landroid/net/util/InterfaceParams;)Landroid/net/dhcp/DhcpClient;
    .registers 5

    new-instance v0, Landroid/net/dhcp/DhcpClient;

    iget-object v1, p2, Landroid/net/util/InterfaceParams;->name:Ljava/lang/String;

    invoke-direct {v0, p0, p1, v1}, Landroid/net/dhcp/DhcpClient;-><init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)V

    iput-object p2, v0, Landroid/net/dhcp/DhcpClient;->mIface:Landroid/net/util/InterfaceParams;

    invoke-virtual {v0}, Landroid/net/dhcp/DhcpClient;->start()V

    return-object v0
.end method

.method private makeWakeupMessage(Ljava/lang/String;I)Lcom/android/internal/util/WakeupMessage;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/net/dhcp/DhcpClient;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/android/internal/util/WakeupMessage;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/net/dhcp/DhcpClient;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    return-object v0
.end method

.method private notifyFailure()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/net/dhcp/DhcpClient;->notifyFailure(I)V

    return-void
.end method

.method private notifyFailure(I)V
    .registers 6

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mController:Lcom/android/internal/util/StateMachine;

    const v1, 0x30004

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method private notifySuccess()V
    .registers 6

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mController:Lcom/android/internal/util/StateMachine;

    new-instance v1, Landroid/net/DhcpResults;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLease:Landroid/net/DhcpResults;

    invoke-direct {v1, v2}, Landroid/net/DhcpResults;-><init>(Landroid/net/DhcpResults;)V

    const v2, 0x30004

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method private replaceLast(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private scheduleLeaseTimers()V
    .registers 15

    iget-wide v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLeaseExpiry:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    const-string v0, "DhcpClient"

    const-string v1, "Infinite lease, no timer scheduling needed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLeaseExpiry:J

    sub-long/2addr v2, v0

    const-wide/16 v4, 0xc

    mul-long/2addr v4, v2

    const-wide/16 v6, 0x19

    div-long/2addr v4, v6

    const-wide/16 v6, 0x7

    mul-long/2addr v6, v2

    const-wide/16 v8, 0x8

    div-long/2addr v6, v8

    iget-object v8, p0, Landroid/net/dhcp/DhcpClient;->mRenewAlarm:Lcom/android/internal/util/WakeupMessage;

    add-long v9, v0, v4

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    iget-object v8, p0, Landroid/net/dhcp/DhcpClient;->mRebindAlarm:Lcom/android/internal/util/WakeupMessage;

    add-long v9, v0, v6

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    iget-object v8, p0, Landroid/net/dhcp/DhcpClient;->mExpiryAlarm:Lcom/android/internal/util/WakeupMessage;

    add-long v9, v0, v2

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    const-string v8, "DhcpClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Scheduling renewal in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v10, 0x3e8

    div-long v12, v4, v10

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "s"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "DhcpClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Scheduling rebind in "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v12, v6, v10

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "s"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "DhcpClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Scheduling expiry in "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v10, v2, v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "s"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private sendDiscoverPacket()Z
    .registers 8

    iget v1, p0, Landroid/net/dhcp/DhcpClient;->mTransactionId:I

    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->getSecs()S

    move-result v2

    iget-object v3, p0, Landroid/net/dhcp/DhcpClient;->mHwAddr:[B

    sget-object v5, Landroid/net/dhcp/DhcpClient;->REQUESTED_PARAMS:[B

    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->getHostNameFromDeviceName()Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Landroid/net/dhcp/DhcpPacket;->buildDiscoverPacket(IIS[BZ[BLjava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-string v1, "DHCPDISCOVER"

    sget-object v2, Landroid/net/dhcp/DhcpPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Landroid/net/dhcp/DhcpClient;->transmitPacket(Ljava/nio/ByteBuffer;Ljava/lang/String;ILjava/net/Inet4Address;)Z

    move-result v1

    return v1
.end method

.method private sendReleasePacket()Z
    .registers 9

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLease:Landroid/net/DhcpResults;

    if-nez v0, :cond_e

    const-string v0, "DhcpClient"

    const-string/jumbo v1, "mDhcpLease is null, Skip sendReleasePacket"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_e
    const-string v0, "DhcpClient"

    const-string/jumbo v1, "sendReleasePacket"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    iget v3, p0, Landroid/net/dhcp/DhcpClient;->mTransactionId:I

    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->getSecs()S

    move-result v4

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLease:Landroid/net/DhcpResults;

    iget-object v0, v0, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/net/Inet4Address;

    iget-object v6, p0, Landroid/net/dhcp/DhcpClient;->mHwAddr:[B

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLease:Landroid/net/DhcpResults;

    iget-object v7, v0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    invoke-static/range {v2 .. v7}, Landroid/net/dhcp/DhcpPacket;->buildReleasePacket(IISLjava/net/Inet4Address;[BLjava/net/Inet4Address;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLease:Landroid/net/DhcpResults;

    iget-object v1, v1, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    if-eqz v1, :cond_3d

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLease:Landroid/net/DhcpResults;

    iget-object v1, v1, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    goto :goto_3f

    :cond_3d
    sget-object v1, Landroid/net/dhcp/DhcpPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    :goto_3f
    const-string v2, "DHCPRELEASE"

    const/4 v3, 0x2

    invoke-direct {p0, v0, v2, v3, v1}, Landroid/net/dhcp/DhcpClient;->transmitPacket(Ljava/nio/ByteBuffer;Ljava/lang/String;ILjava/net/Inet4Address;)Z

    move-result v2

    return v2
.end method

.method private sendRequestPacket(Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;)Z
    .registers 16

    sget-object v0, Landroid/net/dhcp/DhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    invoke-virtual {v0, p1}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_b

    :cond_a
    const/4 v0, 0x2

    :goto_b
    iget v2, p0, Landroid/net/dhcp/DhcpClient;->mTransactionId:I

    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->getSecs()S

    move-result v3

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/net/dhcp/DhcpClient;->mHwAddr:[B

    sget-object v9, Landroid/net/dhcp/DhcpClient;->REQUESTED_PARAMS:[B

    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->getHostNameFromDeviceName()Ljava/lang/String;

    move-result-object v10

    move v1, v0

    move-object v4, p1

    move-object v7, p2

    move-object v8, p3

    invoke-static/range {v1 .. v10}, Landroid/net/dhcp/DhcpPacket;->buildRequestPacket(IISLjava/net/Inet4Address;Z[BLjava/net/Inet4Address;Ljava/net/Inet4Address;[BLjava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz p3, :cond_29

    invoke-virtual {p3}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    goto :goto_2a

    :cond_29
    const/4 v2, 0x0

    :goto_2a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DHCPREQUEST ciaddr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " request="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " serverid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3, v0, p4}, Landroid/net/dhcp/DhcpClient;->transmitPacket(Ljava/nio/ByteBuffer;Ljava/lang/String;ILjava/net/Inet4Address;)Z

    move-result v4

    return v4
.end method

.method private startNewTransaction()V
    .registers 3

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    iput v0, p0, Landroid/net/dhcp/DhcpClient;->mTransactionId:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/dhcp/DhcpClient;->mTransactionStartMillis:J

    return-void
.end method

.method private transmitPacket(Ljava/nio/ByteBuffer;Ljava/lang/String;ILjava/net/Inet4Address;)Z
    .registers 13

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_32

    :try_start_4
    sget-boolean v2, Landroid/net/dhcp/DhcpClient;->DBG:Z

    if-eqz v2, :cond_1e

    const-string v2, "DhcpClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcasting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mPacketSock:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    const/4 v6, 0x0

    iget-object v7, p0, Landroid/net/dhcp/DhcpClient;->mInterfaceBroadcastAddr:Landroid/system/PacketSocketAddress;

    invoke-static/range {v2 .. v7}, Landroid/system/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/SocketAddress;)I

    goto :goto_7f

    :catch_30
    move-exception v0

    goto :goto_81

    :cond_32
    const/4 v2, 0x2

    if-ne p3, v2, :cond_5f

    sget-object v3, Landroid/net/dhcp/DhcpPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    invoke-virtual {p4, v3}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    sget-boolean v2, Landroid/net/dhcp/DhcpClient;->DBG:Z

    if-eqz v2, :cond_57

    const-string v2, "DhcpClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcasting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_57
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    const/16 v3, 0x43

    invoke-static {v2, p1, v1, p4, v3}, Landroid/system/Os;->sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I

    goto :goto_7f

    :cond_5f
    sget-boolean v3, Landroid/net/dhcp/DhcpClient;->DBG:Z

    if-eqz v3, :cond_7a

    const-string v3, "DhcpClient"

    const-string v4, "Unicasting %s to %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    iget-object v5, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    invoke-static {v5}, Landroid/system/Os;->getpeername(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object v5

    aput-object v5, v2, v0

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7a
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    invoke-static {v2, p1}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I
    :try_end_7f
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_7f} :catch_30
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7f} :catch_30

    :goto_7f
    nop

    return v0

    :goto_81
    nop

    const-string v2, "DhcpClient"

    const-string v3, "Can\'t send packet: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method


# virtual methods
.method public doQuit()V
    .registers 3

    const-string v0, "DhcpClient"

    const-string/jumbo v1, "doQuit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/net/dhcp/DhcpClient;->quit()V

    return-void
.end method

.method public getDhcpResult(Ljava/lang/String;)Landroid/net/DhcpResults;
    .registers 3

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mSemUtil:Landroid/net/dhcp/SemDhcpClientUtil;

    if-nez v0, :cond_a

    invoke-static {}, Landroid/net/dhcp/SemDhcpClientUtil;->getInstance()Landroid/net/dhcp/SemDhcpClientUtil;

    move-result-object v0

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mSemUtil:Landroid/net/dhcp/SemDhcpClientUtil;

    :cond_a
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mSemUtil:Landroid/net/dhcp/SemDhcpClientUtil;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mSemUtil:Landroid/net/dhcp/SemDhcpClientUtil;

    invoke-virtual {v0, p1}, Landroid/net/dhcp/SemDhcpClientUtil;->getDhcpResult(Ljava/lang/String;)Landroid/net/DhcpResults;

    move-result-object v0

    return-object v0

    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public isValidPacket(Landroid/net/dhcp/DhcpPacket;)Z
    .registers 7

    invoke-virtual {p1}, Landroid/net/dhcp/DhcpPacket;->getTransactionId()I

    move-result v0

    iget v1, p0, Landroid/net/dhcp/DhcpClient;->mTransactionId:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2a

    const-string v1, "DhcpClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected transaction ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/net/dhcp/DhcpClient;->mTransactionId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2a
    invoke-virtual {p1}, Landroid/net/dhcp/DhcpPacket;->getClientMac()[B

    move-result-object v1

    iget-object v3, p0, Landroid/net/dhcp/DhcpClient;->mHwAddr:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_65

    const-string v1, "DhcpClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MAC addr mismatch: got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/dhcp/DhcpPacket;->getClientMac()[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/dhcp/DhcpPacket;->getClientMac()[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_65
    const/4 v1, 0x1

    return v1
.end method

.method protected onQuitting()V
    .registers 3

    const-string v0, "DhcpClient"

    const-string/jumbo v1, "onQuitting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mController:Lcom/android/internal/util/StateMachine;

    const v1, 0x30005

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public registerForPreDhcpNotification()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/dhcp/DhcpClient;->mRegisteredForPreDhcpNotification:Z

    return-void
.end method

.method public registerPreRequestBssid(Ljava/lang/String;)V
    .registers 5

    sget-boolean v0, Landroid/net/dhcp/DhcpClient;->DBG:Z

    if-eqz v0, :cond_1b

    const-string v0, "DhcpClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerPreRequestBssid bssid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    if-eqz p1, :cond_34

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_24

    goto :goto_34

    :cond_24
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/dhcp/DhcpClient;->mRegisteredForPreDhcpRequest:Z

    iput-object p1, p0, Landroid/net/dhcp/DhcpClient;->mConnectedBssidString:Ljava/lang/String;

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mSemUtil:Landroid/net/dhcp/SemDhcpClientUtil;

    if-nez v0, :cond_33

    invoke-static {}, Landroid/net/dhcp/SemDhcpClientUtil;->getInstance()Landroid/net/dhcp/SemDhcpClientUtil;

    move-result-object v0

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mSemUtil:Landroid/net/dhcp/SemDhcpClientUtil;

    :cond_33
    return-void

    :cond_34
    :goto_34
    return-void
.end method

.method public saveDhcpResult(Ljava/lang/String;Landroid/net/DhcpResults;)V
    .registers 4

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mSemUtil:Landroid/net/dhcp/SemDhcpClientUtil;

    if-nez v0, :cond_a

    invoke-static {}, Landroid/net/dhcp/SemDhcpClientUtil;->getInstance()Landroid/net/dhcp/SemDhcpClientUtil;

    move-result-object v0

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mSemUtil:Landroid/net/dhcp/SemDhcpClientUtil;

    :cond_a
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mSemUtil:Landroid/net/dhcp/SemDhcpClientUtil;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mSemUtil:Landroid/net/dhcp/SemDhcpClientUtil;

    invoke-virtual {v0, p1, p2}, Landroid/net/dhcp/SemDhcpClientUtil;->saveDhcpResult(Ljava/lang/String;Landroid/net/DhcpResults;)V

    :cond_13
    return-void
.end method

.method public setDhcpLeaseExpiry(Landroid/net/dhcp/DhcpPacket;)V
    .registers 7

    invoke-virtual {p1}, Landroid/net/dhcp/DhcpPacket;->getLeaseTimeMillis()J

    move-result-wide v0

    nop

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v0

    nop

    :cond_11
    iput-wide v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLeaseExpiry:J

    return-void
.end method

.method public updateDefaultRouteMacAddress(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mSemUtil:Landroid/net/dhcp/SemDhcpClientUtil;

    if-nez v0, :cond_a

    invoke-static {}, Landroid/net/dhcp/SemDhcpClientUtil;->getInstance()Landroid/net/dhcp/SemDhcpClientUtil;

    move-result-object v0

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mSemUtil:Landroid/net/dhcp/SemDhcpClientUtil;

    :cond_a
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mSemUtil:Landroid/net/dhcp/SemDhcpClientUtil;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mSemUtil:Landroid/net/dhcp/SemDhcpClientUtil;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/dhcp/SemDhcpClientUtil;->updateDefaultRouteMacAddress(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_13
    return-void
.end method
