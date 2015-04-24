type
  TDebugMgrOptions=class(TPersistent)
  private
   FChanged            :Boolean;
   FUpdateCount        :Integer;
   FIntegratedDebugging:Boolean;
   FMapTD32Keys        :Boolean;
   FReadOnlyOnRun      :Boolean;
   FRearrangeLocalMenu :Boolean;
   FPromptToRebuild    :Boolean;
   FLogColors          :TLogColors;
   FUseLogColors       :Boolean;
   FLogLength          :Integer;
   FLogUnlimited       :Boolean;
   FLogClearOnStartup  :Boolean;
   FLogAutoScroll      :Boolean;
   FLogIncludeProcessInfo:Boolean;
   FLogProcessMessages :Boolean;
   FLogThreadMessages  :Boolean;
   FLogBPMessages      :Boolean;
   FLogModuleMessages  :Boolean;
   FAdditionalEventLogTypes:TStrings;
   FAdditionalEventLogColors:TStrings;
   FLocalOverride      :Boolean;
   FProcess            :IOTAProcess;
   FOverridePromptResult:Integer;
   FAutoCompleteExpressionDialogs:Boolean;
   FAllowSideEffectsInWatches:Boolean;
   FAutoCloseDebuggerViews:TList<DebugMgrOpts.TAutoCloseEditorView>;
  public
   constructor Create(const Process: IOTAProcess);
   class destructor Destroy;
   procedure Changed;
   procedure ReadOnlyChanged;
   procedure Edit(DebuggerOptionsDialog: TEnvironmentDialogClass);
   procedure SaveOptions(IniFile: TCustomIniFile);
   procedure LoadOptions(IniFile: TCustomIniFile);
   procedure BeginUpdate;
   procedure EndUpdate;
   procedure AddEventLogOptionType(const LogTypeName: string);
   procedure SetEventLogOption(const LogTypeName: string; Value: Boolean);
   function GetEventLogOption(const LogTypeName: string): Boolean;
   procedure AddEventLogColorType(const LogColorName: string);
   procedure SetEventLogColorOption(const LogColorName: string; FGColor: TColor; BGColor: TColor);
   procedure GetEventLogColorOption(const LogColorName: string; var FGColor: TColor; var BGColor: TColor);
   procedure AddAutoCloseViewType(const ViewIdent: string; const ViewDisplayName: string; DefaultValue: Boolean);
   function GetAutoCloseViewOption(const ViewIdent: string): Boolean;
   procedure SetAutoCloseViewOption(const ViewIdent: string; Value: Boolean);
   property AdditionalEventLogTypes: TStrings;
   property AdditionalEventLogColors: TStrings;
   property IntegratedDebugging: Boolean;
   property MapTD32Keys: Boolean;
   property ReadOnlyOnRun: Boolean;
   property RearrangeLocalMenu: Boolean;
   property PromptToRebuild: Boolean;
   property AutoCompleteExpressionDialogs: Boolean;
   property UseLogColors: Boolean;
   property LogColors: TLogColors;
   property LogLength: Integer;
   property LogUnlimited: Boolean;
   property LogClearOnStartup: Boolean;
   property LogAutoScroll: Boolean;
   property LogIncludeProcessInfo: Boolean;
   property LogProcessMessages: Boolean;
   property LogThreadMessages: Boolean;
   property LogBPMessages: Boolean;
   property LogModuleMessages: Boolean;
   property LocalOverRide: Boolean;
   property OverridePromptResult: Integer;
   property Process: IOTAProcess;
   property AllowSideEffectsInWatches: Boolean;
   property AutoCloseDebuggerViews: TList<DebugMgrOpts.TAutoCloseEditorView>;
  end;
